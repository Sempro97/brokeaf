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
        $user = true;
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
        $query = "SELECT Image.path FROM Image
                       WHERE Image.serialCode = ? ";
        $statement = self::$instance->prepare($query);
        $statement->bind_param('s', $serialCode);
        $statement->execute();
        $result = $statement->get_result();
        error_log(var_dump($result->fetch_all(MYSQLI_ASSOC)));
        return $result;
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

    public function login($email, $password)
    {
        $user = self::is_user($email);
        $table = $user ? 'UserWeb' : 'Seller';
        $query = "SELECT email, password FROM {$table} WHERE email=? LIMIT 1";
        $statement = self::$instance->prepare($query);
        if (false === $statement) {
            error_log('Failed to login user: ('.self::$instance->errno.') '.self::$instance->error);

            return false;
        }
        $statement->bind_param('s', $email);
        $statement->execute();
        $statement->store_result();
        $statement->bind_result($email, $saved_password);
        $statement->fetch();
        if ($statement->num_rows < 1) {
            error_log('Tried to login a non-existing user.');

            return false;
        }
        if ($password == $saved_password) {
            $user_browser = $_SERVER['HTTP_USER_AGENT'];
            $_SESSION['email'] = $email;

            return true;
        }
    }

    public function register_user($user)
    {
        
        $query = 'INSERT INTO UserWeb (cap, address, city, email, IdList, name, surname, password, phoneNumber, province) 
                  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';

        if($statement = self::$instance->prepare($query)){
            $statement->bind_param('isssisssss', intval($user["cap"]),
            $user["address"],
            $user["city"],
            $user["email"],
            NULL,
            $user["name"],
            $user["surname"],
            $user["password"],
            $user["phone"],
            $user["province"]);
            $statement->execute();
        } else {
            error_log('Failed to insert User into MySQL database: ('.self::$instance->errno.') '.self::$instance->error);
            return 0;
        }

        if ($statement->affected_rows == 1) {
            return 1;
        } else {
            error_log('Failed to insert User into MySQL database: ('.self::$instance->errno.') '.self::$instance->error);
            return 0;
        }
    }

    public function register_seller($seller)
    {
        $query = 'INSERT INTO Seller (cap, address, city, companyAddress,companyName, email, name, surname, password, phoneNumber, province)
                  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';

        if($statement = self::$instance->prepare($query)) {
            $statement->bind_param('issssssssss', intval($seller["cap"]),
         $seller["address"],
         $seller["city"],
         $seller["companyAddress"],
         $seller["companyName"],
         $seller["email"],
         $seller["name"],
         $seller["surname"],
         $seller["password"],
         $seller["phone"],
         $seller["province"]);
            $statement->execute();
        } else {
            error_log('Failed to insert Seller into MySQL database: ('.self::$instance->errno.') '.self::$instance->error);
            return 0;
        }
        if($statement->affected_rows == 1){
            return 1;
        } else {
            error_log('Failed to insert Seller into MySQL database: ('.self::$instance->errno.') '.self::$instance->error);
            return 0;
    }
}
    public function get_user_from_email($email) {
        $query = 'SELECT * FROM UserWeb WHERE email = ?';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('s', $email);
        $statement->execute();
        $result = $statement->get_result();
        $user = $result->fetch_all(MYSQLI_ASSOC)[0];
        return $user;
    }

    public function get_seller_from_email($email) {
        $query = 'SELECT * FROM Seller WHERE email = ?';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('s', $email);
        $statement->execute();
        $result = $statement->get_result();
        $user = $result->fetch_all(MYSQLI_ASSOC)[0];
        return $user;
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
