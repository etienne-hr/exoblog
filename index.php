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
        <title>Mon blog voyage</title>
    </head>
    <body>
        <h1>Mon blog voyage</h1>
        
        <?php 
            foreach ($articles as $key => $article) 
            {   
                $articleId = $article->id;
                $setDateOnArticle = $article->date; //the date in timestamp

                $timeStamp->setTimestamp($setDateOnArticle); //convert timestamp in french date 
                $date = $timeStamp->format('d-m-Y H:i:s');

                $title = $article->title; //the title
                if($_SESSION == true)
                {
                    echo '<h2><a href="./includes/articles.php?id='.$articleId.'&article='.$title.'">'.$title.'</a></h2>';
                    echo '<div class="img-article">
                        <img src="./images/'.$title.'.jpg" alt="'.$title.'">
                    </div>';
                }
                else
                {
                    echo '<h2><a href="./login.php">'.$title.'</a></h2>';
                    echo '<div class="img-article">
                        <img src="./images/'.$title.'.jpg" alt="'.$title.'">
                    </div>';
                }
                echo '<span> '.$date.' </span>';
            }
        ?>
    </body>
    </html>