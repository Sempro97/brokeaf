<?php
    define("HOST", "mysql"); // E' il server a cui ti vuoi connettere.
    define("USER", "root"); // E' l'utente con cui ti collegherai al DB.
    define("PASSWORD", "root"); // Password di accesso al DB.
    define("DATABASE", "brokeaf"); // Nome del database.
    $mysqli = new mysqli(HOST, USER, PASSWORD, DATABASE);

    function sec_session_start() {
        $session_name = 'sec_session_id'; // Imposta un nome di sessione
        $secure = false; // Imposta il parametro a true se vuoi usare il protocollo 'https'.
        $httponly = true; // Questo impedirà ad un javascript di essere in grado di accedere all'id di sessione.
        ini_set('session.use_only_cookies', 1); // Forza la sessione ad utilizzare solo i cookie.
        $cookieParams = session_get_cookie_params(); // Legge i parametri correnti relativi ai cookie.
        session_set_cookie_params($cookieParams["lifetime"], $cookieParams["path"], $cookieParams["domain"], $secure, $httponly); 
        session_name($session_name); // Imposta il nome di sessione con quello prescelto all'inizio della funzione.
        session_start(); // Avvia la sessione php.
        session_regenerate_id(); // Rigenera la sessione e cancella quella creata in precedenza.
    }

    function login($email, $password, $mysqli) {
        // Usando statement sql 'prepared' non sarà possibile attuare un attacco di tipo SQL injection.
        if ($stmt = $mysqli->prepare("SELECT email, password FROM Users WHERE email = ? LIMIT 1")) { 
           $stmt->bind_param('s', $email); // esegue il bind del parametro '$email'.
           $stmt->execute(); // esegue la query appena creata.
           $stmt->store_result();
           $stmt->bind_result($email, $db_password); // recupera il risultato della query e lo memorizza nelle relative variabili.
           $stmt->fetch();
           // codifica la password usando una chiave univoca.
           if($stmt->num_rows == 1) { // se l'utente esiste
              // verifichiamo che non sia disabilitato in seguito all'esecuzione di troppi tentativi di accesso errati.
              if($db_password == $password) { // Verifica che la password memorizzata nel database corrisponda alla password fornita dall'utente.
                 // Password corretta!            
                    $user_browser = $_SERVER['HTTP_USER_AGENT']; // Recupero il parametro 'user-agent' relativo all'utente corrente.
      
                    $user_id = preg_replace("/[^0-9]+/", "", $user_id); // ci proteggiamo da un attacco XSS
                    $_SESSION['user_id'] = $user_id; 
                    $username = preg_replace("/[^a-zA-Z0-9_\-]+/", "", $username); // ci proteggiamo da un attacco XSS
                    $_SESSION['username'] = $username;
                    $_SESSION['login_string'] = hash('sha512', $password.$user_browser);
                    // Login eseguito con successo.
                    return true;    
              } else {
                 // Password incorretta.
                 // Registriamo il tentativo fallito nel database.
                 $now = time();
                 $mysqli->query("INSERT INTO login_attempts (user_id, time) VALUES ('$user_id', '$now')");
                 return false;
              }
           }
           } else {
              // L'utente inserito non esiste.
              return false;
           }
        }
?>