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
        $query = 'SELECT email FROM Users WHERE email=? LIMIT 1';
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

    // public function login($email, $password)
    // {
    //     $user = self::is_user($email);
    //     $table = $user ? 'UserWeb' : 'Seller';
    //     $query = "SELECT email, password FROM {$table} WHERE email=? LIMIT 1";
    //     $statement = self::$instance->prepare($query);
    //     if (false === $statement) {
    //         error_log('Failed to login user: ('.self::$instance->errno.') '.self::$instance->error);

    //         return false;
    //     }
    //     $statement->bind_param('s', $email);
    //     $statement->execute();
    //     $statement->store_result();
    //     $statement->bind_result($email, $saved_password);
    //     $statement->fetch();
    //     if ($statement->num_rows < 1) {
    //         error_log('Tried to login a non-existing user.');

    //         return false;
    //     }
    //     if ($password == $saved_password) {
    //         $user_browser = $_SERVER['HTTP_USER_AGENT'];
    //         $_SESSION['email'] = $email;

    //         return true;
    //     }
    // }

    public function register_userr()
    {
        $query = 'SELECT Img.path FROM Img,Item 
                  WHERE Item.serialCode = Img.serialCode AND
                  Item.serialCode = ? ';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('s', $serialCode);
        $statement->execute();
        $result = $statement->get_result();

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function register_user($cap, $address, $city, $email, $IdList, $name, $surname, $password, $phoneNumber, $province)
    {
        $query = 'INSERT INTO UserWeb (cap, address, city, email, IdList, name, surname, password, phoneNumber, province) 
                  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';

        if ($statement = self::$instance->prepare($query)) {
            $statement->bind_param('isssisssss', $cap, $address, $city, $email, $IdList, $name, $surname, $password, $phoneNumber, $province);

            $statement->execute();
        } else {
            $error = self::$instance->errno.' '.self::$instance->error;
            echo $error;
        }

        return $statement->affected_rows;
    }

    public function register_seller($cap, $address, $city, $companyAddres, $companyName, $email, $name, $surname, $password, $phoneNumber, $province)
    {
        $query = 'INSERT INTO Seller ("cap", "address", "city", "companyAddres","companyName", "email", "name", "surname", "password", "phoneNumber", "province")
                  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
        if ($statement = self::$instance->prepare($query)) {
            $statement->bind_param('issssssssss', $cap, $address, $city, $companyAddres, $companyName, $email, $name, $surname, $password, $phoneNumber, $province);
            $statement->execute();
        } else {
            $error = self::$instance->errno.' '.self::$instance->error;
            echo $error;
        }

        return $statement->affected_rows;
    }

    public function sec_session_start()
    {
        $session_name = 'sec_session_id'; // Imposta un nome di sessione
        $secure = false; // Imposta il parametro a true se vuoi usare il protocollo 'https'.
        $httponly = true; // Questo impedirà ad un javascript di essere in grado di accedere all'id di sessione.
        ini_set('session.use_only_cookies', 1); // Forza la sessione ad utilizzare solo i cookie.
        $cookieParams = session_get_cookie_params(); // Legge i parametri correnti relativi ai cookie.
        session_set_cookie_params($cookieParams['lifetime'], $cookieParams['path'], $cookieParams['domain'], $secure, $httponly);
        session_name($session_name); // Imposta il nome di sessione con quello prescelto all'inizio della funzione.
        session_start(); // Avvia la sessione php.
        session_regenerate_id(); // Rigenera la sessione e cancella quella creata in precedenza.
    }

    public function login($email, $password)
    {
        // Usando statement sql 'prepared' non sarà possibile attuare un attacco di tipo SQL injection.
        if ($statement = self::$instance->prepare('SELECT email, password FROM UserWeb WHERE email = ? LIMIT 1')) {
            $statement->bind_param('s', $email); // esegue il bind del parametro '$email'.
            $statement->execute(); // esegue la query appena creata.
            $statement->store_result();
            $statement->bind_result($email, $db_password); // recupera il risultato della query e lo memorizza nelle relative variabili.
            $statement->fetch();
            // codifica la password usando una chiave univoca.
           if (1 == $statement->num_rows) { // se l'utente esiste
              // verifichiamo che non sia disabilitato in seguito all'esecuzione di troppi tentativi di accesso errati.
              if ($password == $db_password) { // Verifica che la password memorizzata nel database corrisponda alla password fornita dall'utente.
                    // Password corretta!
                    $user_browser = $_SERVER['HTTP_USER_AGENT']; // Recupero il parametro 'user-agent' relativo all'utente corrente.
                    //$email = preg_replace('/[^0-9]+/', '', $email); // ci proteggiamo da un attacco XSS
                    $_SESSION['email'] = $email;
                  $_SESSION['login_string'] = hash('sha512', $password.$user_browser);
                  // Login eseguito con successo.
                  return true;
              }
               // Password incorretta.
               // Registriamo il tentativo fallito nel database.
               //$now = time();
               //$mysqli->query("INSERT INTO login_attempts (user_id, time) VALUES ('{$user_id}', '{$now}')");
               return false;
           }
        } else {
            // L'utente inserito non esiste.
            return false;
        }
    }

    public function already_logged()
    {
        return !empty($_SESSION['email']);
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
