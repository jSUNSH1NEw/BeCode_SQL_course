<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inserer des infos utilisateur a partir d'un formulaire dans une base de donnée </title>
</head>
<body>
    <form action="includes/signup.inc.php" method="POST">
        <input type="text" name="first" placeholder="Entrée votre prénom ici">
        <input type="text" name="second" placeholder="Entrée votre Nom ici">
        <input type="text" name="email" placeholder="Entrée votre Email ici">
        <input type="text" name="uid" placeholder="Entrée votre Pseudo ici">
        <input type="password" name="pwd" placeholder="Entrée votre mot de passe ici">
        <button type="submit" name="submit">S'enregistrer</button>
    
    </form>

    
</body>
</html>