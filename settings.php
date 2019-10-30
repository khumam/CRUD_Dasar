<?php

if (defined("IS_INDEX") == false) {
    die("Stop. You can't access this file directly.");
}

?>

<?php
if (isset($_GET['id'])) {
    $mhs = getMahasiswaById($_GET['id']);
    $mhs = mysqli_fetch_assoc($mhs);
} else {
    $mhs = null;
}

if (isset($_POST['submit'])) {
    $update = updateMhs($_GET['id']);
    echo $update ? "sukses" : "gagal";
}

?>

<h1>Settings</h1>

<?php if ($mhs == null) {
    echo "";
} else { ?>

    <div class="container">
        <div class="card p-3">
            <form action="#" method="post">
                <div class="form-group mt-4">
                    <label for="nama">Nama</label><br>
                    <input type="text" name="nama" id="nama" class="form-control" placeholder="Nama" value="<?php echo $mhs['nama']; ?>">
                </div>
                <div class="form-group mt-4">
                    <label for="alamat">Alamat</label><br>
                    <input type="text" name="alamat" id="alamat" class="form-control" placeholder="alamat" value="<?php echo $mhs['alamat']; ?>">
                </div>
                <div class="form-group mt-4">
                    <label for="nohp">nohp</label><br>
                    <input type="text" name="nohp" id="nohp" class="form-control" placeholder="nohp" value="<?php echo $mhs['nohp']; ?>">
                </div>
                <div class="form-group mt-5">
                    <input class="btn btn-success" type="submit" value="Submit" name="submit">
                </div>
            </form>
        </div>
    </div>

<?php } ?>