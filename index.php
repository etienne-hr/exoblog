<?php 

    //includes
    include './includes/login-handler.php';

    //when log in
    if ($_SESSION == true) 
    {
        $activUser = $_SESSION["username"];
    }
?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
        <title>Mon blog voyage</title>
    </head>
    <body>
        <header>
            <h1>My travel blog</h1>
            <a href="./login.php"><img src="images/login.png" alt="login"></a>
            <?php
                if ($_SESSION == true) 
                {
                    echo '<div class="user-activ"><p>Hello '.$activUser.',</p></div>';
                }
            ?>
        </header>
        <div class="container">
            <?php 
                foreach ($articles as $key => $article) 
                {   
                    $articleId = $article->id;
                    $setDateOnArticle = $article->date; //the date in timestamp

                    $timeStamp->setTimestamp($setDateOnArticle); //convert timestamp in french date 
                    $date = $timeStamp->format('d-m-Y');

                    $title = $article->title; //the title
                    if($_SESSION == true)
                    {
                        
                        echo '<div class="img-article">
                            <span> '.$date.' </span>
                            <a href="./articles.php?id='.$articleId.'&article='.$title.'"><img src="./images/'.$title.'.png" alt="'.$title.'"></a>
                                <p> '.$title.' </p>
                        </div>';
                    }
                    else
                    {
                        echo 
                        '<div class="img-article">
                            <a href="./login.php"><img src="./images/'.$title.'.png" alt="'.$title.'"></a>
                            <p> '.$title.' </p>
                            <span> '.$date.' </span>;
                        </div>';
                    }
                }
            ?>
        </div>
    </body>
    </html>