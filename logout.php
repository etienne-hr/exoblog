<?php
    session_start();
    include './includes/config.php';

    if (isset($_GET['disconnect'])) 
    {
        session_destroy();
        header("Location: ./index.php");
    }
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Log Out</title>
</head>
<body>
    <h1>Log Out</h1>
    <div class="back-home">
        <a href="./index.php"><img src="images/home.png" alt="login"></a>
    </div>
    <div class="logout" method="get">
        <form action="#">
            <button type="submit" name="disconnect">Log out</button></a>
        </form>
    </div>
</body>
</html>