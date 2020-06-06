<?php
    session_start();

    //includes
    include './includes/config.php';
    $messageErrorLogin = '';

    if (isset($_POST['username'])){
        $username = stripslashes($_REQUEST['username']);
        $password = stripslashes($_REQUEST['password']);
        
        $loginValidation = $pdo->query("SELECT * FROM `users` WHERE login = '$username' AND password = '$password'");
        $loginValidation = $loginValidation->fetch();

        if ($loginValidation == false) {
            $messageErrorLogin = 'Username or password incorrect';
        }
        else{
            $dbbPw = $loginValidation->password;
            $dbbUsername = $loginValidation->login;
            if ($dbbPw == $password && $dbbUsername == $username)
            {
                $_SESSION['username'] = $username;
                header("Location: index.php");
            }
            }
        }

