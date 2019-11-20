<?php
session_start();

if (defined("IS_INDEX") == false) {
    die("Stop. You can't access this file directly.");
}

session_unset();

redirect_to('login');
