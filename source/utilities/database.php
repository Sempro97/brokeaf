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

    public function get_items_by_name($name, $count)
    {
        $query = 'SELECT * FROM Items';
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
