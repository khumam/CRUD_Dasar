<?php


if (defined("IS_INDEX") == false) {
    die("Stop. You can't access this file directly.");
}


$username = $_POST['username'];
$password = $_POST['password'];

$cek_login = proses_login($username, $password);

if ($cek_login) {
    $_SESSION['username'] = $username;
    $_SESSION['id_user'] = $cek_login['id'];



    $level = get_level($cek_login['id']);

    if ($level) {
        $_SESSION['id_level'] = $level['id_level'];
    } else {
        redirect_to('logout');
    }

    redirect_to("dashboard");
} else {
    redirect_to("login&error=1");
}
