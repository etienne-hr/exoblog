<?php
    //includes

    include './includes/login-handler.php';

    //Message error if the user try to read an article without being connected

    $inactivUser = '';
    $conn = $_GET['connect'];   
        
    if ($_SESSION == false && $conn == "errormessage") 
    {
         $inactivUser = 'You must be register to read article';
    }

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
    <h1>Login in</h1>
    <div class="back-home">
        <a href="./index.php"><img src="images/home.png" alt="login"></a>
    </div>
    <div class="login">
        <div class="message-error">
        <?php
            if ($_SESSION == false && $conn == "errormessage") 
            {
                echo '<p>'.$inactivUser.'</p>';
            }
        ?>
        </div>
        <form action="#" method="post">
            <fieldset>
                <label for="username"> Username</label>
                <br>
                <input type="text"  name="username">
            </fieldset>
            <fieldset>
                <label for="Password"> Password </label>
                <br>
                <input type="password" name="password">
            </fieldset>
            <fieldset>
                <label for="username"></label>
                <br>
                <input type="submit" value="Connexion " name="submit">
            </fieldset>
            <hr style="width:50%;text-align:center;margin-top:25px">
        </form>
        <a href="./form.php#"><button>Create account</button></a>
    </div>
</body>
</html>