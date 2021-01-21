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

    public function get_cart($email) {
        $query = "SELECT DetailsItems.serialCode, DetailsItems.positionIndex, DetailsItems.quantity, DetailsItems.price, Items.name, ListsItems.total, Items.quantity AS stock
        FROM ((((ShoppingCarts 
        INNER JOIN ListsItems
        ON ShoppingCarts.idShoppingCart = ListsItems.idShoppingCart)
        INNER JOIN DetailsItems
        ON ListsItems.IdList = DetailsItems.IdList)
        INNER JOIN Items
        ON DetailsItems.serialCode = Items.serialCode)
        INNER JOIN Users
        ON ShoppingCarts.idShoppingCart = Users.idShoppingCart) WHERE Users.email=?";

        $statement = self::$instance->prepare($query);
        $statement->bind_param('s', $email);
        $statement->execute();
        $result = $statement->get_result();
        return $result->fetch_all(MYSQLI_ASSOC);
    }
}
