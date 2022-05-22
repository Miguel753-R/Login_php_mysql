<?php
    require 'database.php';

    $message = '';

    if(!empty($_POST['email']) && !empty($_POST['password']) && !empty($_POST['confirm_password'])){
        if($_POST['confirm_password'] == $_POST['password']){

            $sql = "INSERT INTO users (email, password) VALUES (:email, :password)";
            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':email',$_POST['email']);
            $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
            $stmt->bindParam(':password',$password);

            if($stmt->execute()){
                $message = 'Seccessfully created new user';
            } else{
                $message = 'Sorry thre must have been an issue creating your account';
            }
        }else{
            $message = "Sorry the passwords do not match ";
        }
    }else{
        $message = "Sorry there seems to be empty spaces";
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SignUp</title>

    <enlace rel="preconectar" href="https://fonts.googleapis.com">
    <enlace rel="preconectar" href="https://fonts.gstatic.com" crossorigin>
    <enlace href="https: //fonts.googleapis.com/css2? family= Roboto:wght@300 & display=swap" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/styles.css">

</head>
<body>
    
    <?php require 'partials/header.php'; ?>

    <?php if(!empty($message)): ?>
    <p> <?= $message ?> </p>
    <?php endif; ?>

    <h1>SignUp</h1>
    <span>or <a href="login.php">Login</a></span>

    <form action="signup.php" method="POST">
        <input type="text" name="email" placeholder="Enter your mail">
        <input type="password" name="password" placeholder="Enter your password">
        <input type="password" name="confirm_password" placeholder="Confirm your password">
        <input type="submit" value="Send">
    </form>

</body>
</html>