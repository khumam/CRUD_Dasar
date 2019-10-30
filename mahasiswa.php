<?php

if (defined("IS_INDEX") == false) {
    die("Stop. You can't access this file directly.");
}

?>

<?php
$data = getMahasiswa();
?>

<h1>List Mahasiswa</h1>

<div class="container">
    <h4 class="my-3"><span class="float-right"><a href="index.php?page=add" class="btn btn-success">Tambah Mahasiswa</a></span></h4>
    <div class="card p-3">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nama</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($data as $dt) { ?>
                    <tr>
                        <td><?php echo $dt['id']; ?></td>
                        <td><?php echo $dt['nama']; ?></td>
                        <td>
                            <a href="index.php?page=profil&id=<?php echo $dt['id']; ?>" class="badge badge-lg badge-info">Detail</a>
                            <a href="index.php?page=settings&id=<?php echo $dt['id']; ?>" class="badge badge-lg badge-success">Update</a>
                            <a href="index.php?page=delete&id=<?php echo $dt['id']; ?>" class="badge badge-lg badge-danger">Delete</a>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</div>