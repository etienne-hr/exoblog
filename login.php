<?php
    //includes

    include './includes/login-handler.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
</head>
<body>
    
    <h1>Connexion</h1>
    <form action="#" method="post">
        <input type="text"  name="username" placeholder="username">
        <input type="password" name="password" placeholder="password">
        <input type="submit" value="Connexion " name="submit">
    </form>

</body>
</html>