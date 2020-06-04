<?php

    //errors 
    error_reporting(E_ALL);
    ini_set('display_errors', 1);

    // Base de données
    define('DB_HOST', 'localhost');
    define('DB_PORT', '3306');
    define('DB_NAME', 'blog_h2');
    define('DB_USER', 'root');
    define('DB_PASS', '');

    $pdo = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME.';port='.DB_PORT, DB_USER, DB_PASS);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
    

    // Gender
    $genders = ['female', 'male', 'apache helicopter', 'other'];

    //For articles in index.php and articles.php
    $query = $pdo->query('SELECT * FROM articles');
    $articles = $query->fetchAll();

    $timeStamp = new DateTime();