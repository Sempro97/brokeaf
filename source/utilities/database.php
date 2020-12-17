<?php

class Database
{
    private const SERVER_NAME = "mysql";
    private const USERNAME = "root";
    private const PASSWORD = "root";
    private const DATABASE_NAME = "brokeaf";

    private static $instance;

    public function __construct()
    {
        $should_create_instance = isset(self::$instance) == false;
        if ($should_create_instance) {
            self::$instance = new mysqli(
                self::SERVER_NAME,
                self::USERNAME,
                self::PASSWORD,
                self::DATABASE_NAME
            );
        }
        return self::$instance;
    }

    public function get_random_items($count)
    {
        return null;
    }

    public function user_exists($email)
    {
        $query = "SELECT email FROM Users WHERE email=?";
        $statement = self::$instance->prepare($query);
        $statement->bind_param('s', $email);
        $statement->execute();
        $result = $statement->get_result();
        return $result->num_rows === 1;
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
