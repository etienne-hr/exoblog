<?php

    session_start();
    //includes 
    include './config.php';

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

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title><?= $title ?> </title>
</head>
<body>
    <h2><?= $title ?></h2>
    <?php 
            foreach ($article as $key => $section) 
            {   
                $setDateOnArticle = $section->date; //the date in timestamp
                $timeStamp->setTimestamp($setDateOnArticle); //convert timestamp in french date 
                $date = $timeStamp->format('d-m-Y');

                $text = $section->text;

                echo '<span> '.$date.' </span>';

                echo '<section> '.$text.' </section>';
            }
        ?>
    
            <section>
            <span> Section commentaire :</span>
    <?php
            foreach ($commentsArticle as $key => $comment) 
            {
                //select users comment
                $commentText = $comment->text;
                $commentUser = $comment->user_id;
                
                $queryUsers = $pdo->query('SELECT login, id FROM users WHERE id = '.$commentUser.'');
                $users = $queryUsers->fetch();
                $users = $users->login;
                
                echo '<div> '.$users.' : '.$commentText.' </div>';
            }
    ?>
            </section>

            <form action="#" method="post">
            <input type="text" name="sendcomment" id="lastcomment" value ="<?= $commentValue ?>">

                <input type="submit" name="submitcomment">
            </form>

    
</body>
</html>
