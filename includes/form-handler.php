<?php

    include './includes/config.php';

    //select login
    $queryLogin = $pdo->query('SELECT login FROM users');
    $existingLogin = $queryLogin->fetchAll();


    // Message
    $errorMessages = [];
    $successMessages = [];

    // Base values
    $login = '';
    $password = '';
    $age = '';
    $gender = '';

    // Form sent
    if(!empty($_POST))
    {
        // Sanatize data
        $login = trim(strip_tags($_POST['login']));
        $password = $_POST['password'];
        $age = (int)$_POST['age'];
        $gender = empty($_POST['gender']) ? '' : $_POST['gender'];

        foreach ($existingLogin as $key => $eachLogin) 
        {
            $exist = $eachLogin->login;
            if ($exist == $login)
            {
                $errorMessages[] = 'login already taken';
            }
        }
        
        if(empty($login))
        {
            $errorMessages[] = 'Missing login';
        }

        if(empty($password))
        {
            $errorMessages[] = 'Missing password';
        }
        else if(strlen($password) < 5)
        {
            $errorMessages[] = 'Password too short';
        }
        else if(!preg_match('/[a-z]/', $password) || !preg_match('/[A-Z]/', $password) || !preg_match('/[0-9]/', $password))
        {
            $errorMessages[] = 'Password should contain lowercase, uppercase and numbers';
        }

        if($age < 1 || $age > 130)
        {
            $errorMessages[] = 'Wrong age';
        }

        if(empty($gender))
        {
            $errorMessages[] = 'Missing gender';
        }
        else if(!in_array($gender, $genders))
        {
            $errorMessages[] = 'Wrong gender';
        }

        // Success
        if(empty($errorMessages))
        {
            $successMessages[] = 'You are now registered';
            $prepare = $pdo->prepare('INSERT INTO users (login, password, age, gender) VALUES (:login, :password, :age, :gender)');
            $prepare->bindValue(':login', $login);
            $prepare->bindValue(':password', $password);
            $prepare->bindValue(':age', $age);
            $prepare->bindValue(':gender', $gender);
            $execute = $prepare->execute();
            $login = '';
            $password = '';
            $age = '';
            $gender = '';
            header('Location: ./');
        }
    }
