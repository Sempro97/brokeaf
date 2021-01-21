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

    public function account_login($email, $password)
    {
    }

    public function add_item($name, $description, $price, $quantity, $category, $serial_code, $image)
    {
        $query = 'INSERT INTO Items (name, description, price, quantity, Categories, serialCode, isVisible, emailSeller)
                  VALUES (?, ?, ?, ?, ?, ?, \'1\', \'guiseppe.williamson@example.com\')';
        $statement = self::$instance->prepare($query);
        if ($statement) {
            $statement->bind_param('ssssss', $name, $description, $price, $quantity, $category, $serial_code);
            $statement->execute();
        } else {
            exit('Failed to insert item into MySQL database: ('.self::$instance->errno.') '.self::$instance->error);
        }
        if ($statement->affected_rows < 0) {
            exit('Failed to insert item into MySQL database: ('.self::$instance->errno.') '.self::$instance->error);
        }

        return 1 === $statement->affected_rows;
    }

    public function get_categories()
    {
        $query = 'SELECT name FROM Categories';
        $statement = self::$instance->prepare($query);
        $statement->execute();
        $result = $statement->get_result();
        $rows = $result->fetch_all(MYSQLI_ASSOC);

        return array_column($rows, 'name');
    }

    public function get_random_items($count)
    {
        $query = 'SELECT * FROM Items ORDER BY RAND() LIMIT ?';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('i', $count);
        $statement->execute();
        $result = $statement->get_result();

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function register_user()
    {
        return true;
    }

    public function register_seller()
    {
        return true;
    }
}
