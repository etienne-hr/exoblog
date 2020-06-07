<?php

    session_start();
    //includes 
    include './includes/config.php';

    $title = $_GET['article'];
    $id = $_GET['id'];

    //select articles
    $targetArticle = $pdo->query('SELECT * FROM articles WHERE id = '.$id.' ');
    $article = $targetArticle->fetchAll();

    //select comments
    $queryComments = $pdo->query('SELECT text, user_id FROM comments WHERE id_article = '.$id.'');
    $commentsArticle = $queryComments->fetchAll();

    //select user ID
    foreach ($_SESSION as $key => $user) 
    {
        $session = $user;
    }
    
    $queryUserID= $pdo->query("SELECT id FROM `users` WHERE login = '$session' ");
    $userId = $queryUserID->fetch();

    // commentary section 

    //send a comment
    $commentValue = '';
    if($_POST)
    {
    $commentValue = $_POST['sendcomment'];
    
    
    $newComment = $commentValue;
    $sendUserId = $userId->id;
    
    $prepare = $pdo->prepare('INSERT INTO comments (id_article, text, user_id) VALUES (:id_article, :text, :user_id)');
    $prepare->bindValue(':id_article', $id);
    $prepare->bindValue(':text', $newComment);
    $prepare->bindValue(':user_id', $sendUserId);
    $execute = $prepare->execute();
    $commentValue = '';
    header('Location: ./articles.php?id='.$id.'&article='.$title.'');
    exit;
    }

    //All comments 

    $commentUserTab = [];

    foreach ($commentsArticle as $key => $comment) 
            {
                //select users comment
                $commentText = $comment->text;
                $commentUser = $comment->user_id;
                
                $queryUsers = $pdo->query('SELECT login, id FROM users WHERE id = '.$commentUser.'');
                $users = $queryUsers->fetch();
                $users = $users->login;

                //for templating
                $commentUserTab[] = ["username" => "$users", "text" => "$commentText"];
            }
 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
    <title><?= $title ?> </title>
</head>
<body>
    <header class="page-article">
        <h2><?= $title ?>,</h2>
    </header>
    <div class="back-home">
        <a href="./index.php"><img src="images/home.png" alt="login"></a>
    </div>
    <div class="block-horizon">

    </div>
    <?php 
            foreach ($article as $key => $section) 
            {   
                $setDateOnArticle = $section->date; //the date in timestamp
                $timeStamp->setTimestamp($setDateOnArticle); //convert timestamp in french date 
                $date = $timeStamp->format('d-m-Y');

                $text = $section->text;


                echo '<section> '.$text.' <span> '.$date.' </span></section>';
            }
        ?>
    
    <section class="section-commentary">
        <span> Commentary section :</span>
        <div class="commentary">
            <?php
                    foreach ($commentUserTab as $key => $comment) 
                    {
                        $commentUser = $comment["username"];
                        $commentText = $comment["text"];
                        echo '<div> '.$users.' : '.$commentText.' </div>';
                    }
            ?>
        </div>
        <form action="#" method="post">
                <fieldset>
                    <textarea  id="comment" cols="30" rows="10" name="sendcomment" id="lastcomment" value ="<?= $commentValue ?>"></textarea>
                </fieldset>
                <fieldset>
                    <input type="submit" name="submitcomment" value="Send">
                </fieldset>
            </form>
    </section>
    
</body>
</html>
