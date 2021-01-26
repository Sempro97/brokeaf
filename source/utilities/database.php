<?php

class Database
{
    private const SERVER_NAME = 'mysql';
    private const USERNAME = 'root';
    private const PASSWORD = 'root';
    private const DATABASE_NAME = 'brokeaf';

    private static $instance;

    public function __construct()
    {
        $should_create_connection = false == isset(self::$instance);
        if ($should_create_connection) {
            $instance = new mysqli(
                self::SERVER_NAME,
                self::USERNAME,
                self::PASSWORD,
                self::DATABASE_NAME
            );
            if ($instance->connect_errno) {
                exit('Failed to connect to MySQL server: ('.$instance->connect_errno.') '.$instance->connect_error);
            }
            self::$instance = $instance;
        }

        return self::$instance;
    }

    public function account_exists($email)
    {
        $query = 'SELECT email FROM UsersWeb,Seller WHERE email=? LIMIT 1';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('s', $email);
        $statement->execute();
        $result = $statement->get_result();

        return 1 === $result->num_rows;
    }

    public function add_image($path, $serial_code)
    {
        $query = 'INSERT INTO Image (path, serialCode) VALUES (?, ?)';
        $statement = self::$instance->prepare($query);
        if (false === $statement) {
            error_log('Failed to insert image into MySQL database: ('.self::$instance->errno.') '.self::$instance->error);

            return false;
        }
        $statement->bind_param('ss', $path, $serial_code);
        $result = $statement->execute();
        if (false === $result || $statement->affected_rows < 0) {
            error_log('Failed to insert image into MySQL database: ('.self::$instance->errno.') '.self::$instance->error);

            return false;
        }

        return 1 === $statement->affected_rows;
    }

    public function add_item($item, $email)
    {
        $query = 'INSERT INTO Item (name, description, price, quantity, Category, serialCode, emailSeller)
                  VALUES (?, ?, ?, ?, ?, ?, ?)';
        $statement = self::$instance->prepare($query);
        if (false === $statement) {
            error_log('Failed to insert item into MySQL database: ('.self::$instance->errno.') '.self::$instance->error);

            return false;
        }
        $statement->bind_param(
            'sssssss',
            $item['name'],
            $item['description'],
            $item['price'],
            $item['quantity'],
            $item['category'],
            $item['serial_code'],
            $email
        );
        $result = $statement->execute();
        if (false === $result || $statement->affected_rows < 0) {
            error_log('Failed to insert item into MySQL database: ('.self::$instance->errno.') '.self::$instance->error);

            return false;
        }

        return 1 === $statement->affected_rows;
    }

    public function get_item($serial_code)
    {
        $query = 'SELECT * FROM Item WHERE serialCode=?';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('s', $serial_code);
        $statement->execute();
        $result = $statement->get_result();

        return 1 == $result->num_rows ? $result->fetch_all(MYSQLI_ASSOC)[0] : false;
    }

    public function get_categories()
    {
        $query = 'SELECT name FROM Category';
        $statement = self::$instance->prepare($query);
        $statement->execute();
        $result = $statement->get_result();
        $rows = $result->fetch_all(MYSQLI_ASSOC);

        return array_column($rows, 'name');
    }

    public function get_items_by_name($name, $count)
    {
        $query = 'SELECT * FROM Item';
        $statement = self::$instance->prepare($query);
        $statement->execute();
        $result = $statement->get_result();
        $rows = $result->fetch_all(MYSQLI_ASSOC);
        // Calculate Levenshtein distance for each item name.
        $distances = [];
        foreach ($rows as $item) {
            $distance = levenshtein($name, $item['name']);
            $entry = [
                'distance' => $distance,
                'item' => $item,
            ];
            array_push($distances, $entry);
        }
        // Sort based on distance, from low to high.
        usort($distances, function ($a, $b) {
            if ($a['distance'] == $b['distance']) {
                return 0;
            }

            return ($a['distance'] < $b['distance']) ? -1 : 1;
        });
        // Remove the unneeded entries
        $distances = array_slice($distances, 0, $count);

        return array_column($distances, 'item');
    }

    public function get_items_by_category($category, $count)
    {
        $query = 'SELECT * FROM Item 
                  WHERE Item.category=(
                                        SELECT name FROM Category
                                        WHERE Category.name=?
                  )
                  LIMIT ?';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('si', $category, $count);
        $statement->execute();
        $result = $statement->get_result();

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function get_random_items($count)
    {
        $query = 'SELECT * FROM Item ORDER BY RAND() LIMIT ?';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('i', $count);
        $statement->execute();
        $result = $statement->get_result();

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function get_notifications($email)
    {
        $user = self::is_user($email);
        $table = $user ? 'UserWeb' : 'Seller';
        $column = $user ? 'emailUser' : 'emailSeller';
        $query = "SELECT *
                  FROM NotificationUser
                  INNER JOIN {$table} ON {$table}.email=NotificationUser.{$column}
                  INNER JOIN Description ON NotificationUser.idDesc=Description.IdDesc
                  WHERE email=?";
        $statement = self::$instance->prepare($query);
        if (false === $statement) {
            error_log('Failed to retrieve notifications from MySQL database: ('.self::$instance->errno.') '.self::$instance->error);

            return false;
        }
        $statement->bind_param('s', $email);
        $statement->execute();
        $result = $statement->get_result();

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function get_img_item($serialCode)
    {
        $query = 'SELECT Image.path FROM Image
                       WHERE Image.serialCode = ? ';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('s', $serialCode);
        $statement->execute();
        $result = $statement->get_result();

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function get_orders($email)
    {
        $query = 'SELECT email, datePayment, ItemDetails.IdList, ItemDetails.price, ItemDetails.quantity, Item.serialCode
                  FROM Order_UserWeb
                  INNER JOIN ItemDetails ON ItemDetails.IdList=Order_UserWeb.IdList
                  INNER JOIN Item ON Item.serialCode=ItemDetails.serialCode
                  WHERE email=?';
        $statement = self::$instance->prepare($query);
        if (false === $statement) {
            error_log('Failed to retrieve user orders: ('.self::$instance->errno.') '.self::$instance->error);

            return false;
        }
        $statement->bind_param('s', $email);
        $statement->execute();
        $result = $statement->get_result();
        $rows = $result->fetch_all(MYSQLI_ASSOC);
        $orders = [];
        foreach ($rows as $row) {
            $id = $row['IdList'];
            // Calculate the total price of the order.
            $total = $orders[$id]['totalPrice'];
            if (null === $total) {
                $total = 0;
            }
            $total += $row['price'];
            $orders[$id]['totalPrice'] = $total;
            // Save the id and payment date of the order.
            $orders[$id]['number'] = $row['IdList'];
            $orders[$id]['datePayment'] = $row['datePayment'];
            // Move the items to a sub-array.
            $orders[$id]['items'][] = $row;
        }

        return $orders;
    }

    public function login($email, $password)
    {
        $user = self::is_user($email);
        $table = $user ? 'UserWeb' : 'Seller';
        $query = "SELECT email, password, salt FROM {$table} WHERE email=? LIMIT 1";
        $statement = self::$instance->prepare($query);
        if (false === $statement) {
            error_log('Failed to login user: ('.self::$instance->errno.') '.self::$instance->error);

            return false;
        }
        $statement->bind_param('s', $email);
        $statement->execute();
        $statement->store_result();
        $statement->bind_result($email, $saved_password, $salt);
        $statement->fetch();
        $password = hash('sha512', $password.$salt);
        if ($statement->num_rows < 1) {
            error_log('Tried to login a non-existing user.');

            return false;
        }
        if ($password == $saved_password) {
            $_SESSION['email'] = $email;
            $user_browser = $_SERVER['HTTP_USER_AGENT'];
            $_SESSION['login_string'] = hash('sha512', $password.$user_browser);

            return true;
        }
    }

    public function register_user($user)
    {
        $query = 'INSERT INTO UserWeb (cap, address, city, email, IdList, name, surname, password, phoneNumber, province, salt) 
                  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';

        if ($statement = self::$instance->prepare($query)) {
            try {
                error_log(print_r($user, true));
                $statement->bind_param(
                    'isssissssss',
                    $a = $user['cap'],
                    $user['address'],
                    $user['city'],
                    $user['email'],
                    $a = null,
                    $user['name'],
                    $user['surname'],
                    $user['password'],
                    $user['phoneNumber'],
                    $user['province'],
                    $user['salt'],
                );

                $statement->execute();
            } catch (Exception $excp) {
                error_log(print_r($excp, true));
            }
        } else {
            error_log('Failed to insert User into MySQL database: ('.self::$instance->errno.') '.self::$instance->error);

            return 0;
        }
        if (1 == $statement->affected_rows) {
            error_log('userok');

            return 1;
        }
        error_log('Failed to insert User into MySQL database: ('.self::$instance->errno.') '.self::$instance->error);

        return 0;
    }

    public function register_seller($seller)
    {
        $query = 'INSERT INTO Seller (cap, address, city, companyAddress,companyName, email, name, surname, password, phoneNumber, province, salt)
                  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';

        if ($statement = self::$instance->prepare($query)) {
            $statement->bind_param(
                'issssssssss',
                $a = $seller['cap'],
                $seller['address'],
                $seller['city'],
                $seller['companyAddress'],
                $seller['companyName'],
                $seller['email'],
                $seller['name'],
                $seller['surname'],
                $seller['password'],
                $seller['phone'],
                $seller['province'],
                $seller['salt']
            );
            $statement->execute();
        } else {
            error_log('Failed to insert Seller into MySQL database: ('.self::$instance->errno.') '.self::$instance->error);

            return 0;
        }
        if (1 == $statement->affected_rows) {
            return 1;
        }
        error_log('Failed to insert Seller into MySQL database: ('.self::$instance->errno.') '.self::$instance->error);

        return 0;
    }

    public function get_user_from_email($email)
    {
        $query = 'SELECT * FROM UserWeb WHERE email = ?';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('s', $email);
        $statement->execute();
        $result = $statement->get_result();

        return $result->fetch_all(MYSQLI_ASSOC)[0];
    }

    public function get_seller_from_email($email)
    {
        $query = 'SELECT * FROM Seller WHERE email = ?';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('s', $email);
        $statement->execute();
        $result = $statement->get_result();

        return $result->fetch_all(MYSQLI_ASSOC)[0];
    }

    public function is_user($email)
    {
        $query = 'SELECT * FROM UserWeb WHERE email=?';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('s', $email);
        $statement->execute();
        $result = $statement->get_result();

        return 1 == $result->num_rows;
    }

    public function is_seller($email)
    {
        $query = 'SELECT * FROM Seller WHERE email=?';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('s', $email);
        $statement->execute();
        $result = $statement->get_result();

        return 1 == $result->num_rows;
    }

    public function remove_notification($id)
    {
        $query = 'DELETE FROM NotificationUser WHERE idNotification=?;';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('s', $id);
        $statement->execute();

        return 1 === $statement->affected_rows;
    }
}
