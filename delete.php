<?php

if (defined("IS_INDEX") == false) {
    die("Stop. You can't access this file directly.");
}

if (isset($_GET['id'])) {
    $mhs = deleteMhs($_GET['id']);
    if ($mhs) {
        echo "sukses menghapus data dengan id " . $_GET['id'];
        redirect_to("mahasiswa");
    }
}
