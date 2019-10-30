<?php

if (defined("IS_INDEX") == false) {
    die("Stop. You can't access this file directly.");
}

?>

<?php
if (isset($_GET['id'])) {
    $mhs = getMahasiswaById($_GET['id']);
}

?>

<h1>Profil</h1>

<?php if (!empty($mhs) && isset($_GET['id'])) {
    $mhs = mysqli_fetch_assoc($mhs); ?>
    <div class="container">
        <div class="card p-3">
            <h3>Nama</h3>
            <p><?php echo $mhs['nama']; ?></p>
            <h3>Alamat</h3>
            <p><?php echo $mhs['alamat']; ?></p>
            <h3>Nomor Handphone</h3>
            <p><?php echo $mhs['nohp']; ?></p>
        </div>
    </div>
<?php } ?>