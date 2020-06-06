<?php
    include './includes/form-handler.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <title>Formulaire</title>
</head>
<body>
    <h1>Create an Account</h1>
    <div class="back-home">
        <a href="./index.php"><img src="images/home.png" alt="login"></a>
    </div>

    <div class="new-account">
        <!-- Error Messages -->
        <?php foreach($errorMessages as $_message): ?>
            <div class="message-error"><?= $_message ?></div>
        <?php endforeach ?>
        
        <!-- Form -->
        <form action="#" method="post">

            <!-- Login -->
            <fieldset>
                <label for="login">Login</label>
                <br>
                <input id="login" type="text" name="login" value="<?= $login ?>">
            </fieldset>

            <!-- Password -->
            <fieldset>
                <label for="password">Password</label>
                <br>
                <input id="password" type="password" name="password">
            </fieldset>

            <!-- Age -->
            <fieldset>
                <label for="age">Age</label>
                <br>
                <input id="age" type="text" name="age" value="<?= $age ?>">
            </fieldset>

            <!-- Gender -->
            <fieldset>
                <label>Gender</label>
                <?php foreach($genders as $_gender): ?>
                    <br>
                    <label>
                        <input
                            type="radio"
                            value="<?= $_gender ?>"
                            name="gender"
                            <?= $_gender === $gender ? 'checked' : '' ?>
                        >
                        <?= ucfirst($_gender) ?>
                    </label>
                <?php endforeach ?>
            </fieldset>

            <!-- Submit -->
            <fieldset>
                <input type="submit"> 
            </fieldset>
        </form>
    </div>

</body>
</body>
</html>