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
        $query = 'INSERT INTO UserWeb (cap, address, city, email, IdList, name, surname, password, phoneNumber, province) 
                  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';

        if($statement = self::$instance->prepare($query)){
            $statement->bind_param('isssisssss', $cap, $address, $city, $email, $IdList, $name, $surname, $password, $phoneNumber, $province);
            
        $statement->execute();
        }
        else{
            $error = self::$instance->errno . ' ' . self::$instance->error;
            echo $error;
        }
        
        return $statement->affected_rows;
    }

    public function register_seller($cap, $address, $city, $companyAddres, $companyName, $email, $name, $surname, $password, $phoneNumber, $province)
    {
        $query = 'INSERT INTO Seller ("cap", "address", "city", "companyAddres","companyName", "email", "name", "surname", "password", "phoneNumber", "province")
                  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
        if($statement = self::$instance->prepare($query)) {
        $statement->bind_param('issssssssss', $cap, $address, $city, $companyAddres, $companyName, $email, $name, $surname, $password, $phoneNumber, $province);
        $statement->execute();
    }
    else{
        $error = self::$instance->errno . ' ' . self::$instance->error;
        echo $error;
    }
    
    return $statement->affected_rows;
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
              if ($db_password == $password) { // Verifica che la password memorizzata nel database corrisponda alla password fornita dall'utente.
                    // Password corretta!
                    $user_browser = $_SERVER['HTTP_USER_AGENT']; // Recupero il parametro 'user-agent' relativo all'utente corrente.
                    $user_id = preg_replace('/[^0-9]+/', '', $user_id); // ci proteggiamo da un attacco XSS
                    $_SESSION['user_id'] = $user_id;
                    $username = preg_replace('/[^a-zA-Z0-9_\\-]+/', '', $username); // ci proteggiamo da un attacco XSS
                    $_SESSION['username'] = $username;
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

    public function get_user_from_email($email) {
        $query = 'SELECT * FROM UserWeb WHERE email = ?';
        $statement = self::$instance->prepare($query);
        $statement->bind_param('s', $email);
        $statement->execute();
        $result = $statement->get_result();
        $user = $result->fetch_all(MYSQLI_ASSOC)[0];
        return $user;
    }

}
