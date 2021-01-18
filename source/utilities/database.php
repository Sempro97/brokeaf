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
        $should_create_instance = false == isset(self::$instance);
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

    public function get_random_items($count)
    {
        $query = 'SELECT * FROM Item ORDER BY RAND() LIMIT ?';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('i', $count);
        $statement->execute();
        $result = $statement->get_result();

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function get_img_item($serialCode)
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
        
        $query = 'INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`)
                  VALUES ('?', '?', '?', '?', '?', '?', '?', '?', '?', '?')';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('isssississ', $cap, $address, $city, $email, $IdList, $name, $surname, $password, $phoneNumber, $province);
        $statement->execute();
        $result = $statement->get_result();

        return $result->fetch_all(MYSQLI_ASSOC);
        
    }

    public function register_seller($cap, $address, $city,$companyAddres,$companyName, $email, $name, $surname, $password, $phoneNumber, $province)
    {
                
        $query = 'INSERT INTO `UserWeb` (`cap`, `address`, `city`, `companyAddres`,`companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`)
                  VALUES ('?', '?', '?', '?', '?', '?', '?', '?', '?', '?')';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('isssssssiss', $cap, $address, $city,$companyAddres,$companyName, $email, $name, $surname, $password, $phoneNumber, $province);
        $statement->execute();
        $result = $statement->get_result();

        return $result->fetch_all(MYSQLI_ASSOC);
    }
}
