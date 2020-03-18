<?php
    $host = 'localhost';
    $user = 'root';
    $password = '';
    $dbname = 'pdoposts';


    //* SET DSN 

    $dsn = 'mysql:host=' . $host .';dbname='. $dbname;

    //* CREATE A PDO INSTANCE 

    $pdo = new PDO($dsn, $user, $password);
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

    //PRDO QUERY

    $stmt = $pdo->query('SELECT * FROM posts');

    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo $row;
        # code...
    }

    //! UNSAFE

    $sql = "SELECT * FROM posts WHERE author = '$author'";


    //? FECTH MULTIPLE HOST

     

    //? user input
    $author ='Brad';
    $is_published = true;


    //? paramettre de positionnement 

    $sql = 'SELECT * FROM posts WHERE author = ?';
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$author]);
    $posts = $stmt->fetchAll();

    foreach ($posts as $post) {
        echo $post->title . '<br>';
        # code...
    }

    