<?php

function redirect_to($alamat)
{
    echo "<script>
    window.location.href = 'index.php?page=" . $alamat . "'.php</script>";
}
function connect()
{
    $conn = mysqli_connect('localhost', 'root', '', 'webpro');
    if ($conn == false) {
        echo mysqli_connect_error();
        die();
    } else {
        return $conn;
    }
}

function query($sql)
{
    $conn = connect();
    return mysqli_query($conn, $sql);
}

function getMahasiswa()
{
    $sql = "select * from myTable where del=0 order by id desc";
    $data = query($sql);
    return $data;
}

function getMahasiswaById($id)
{
    $sql = "select * from myTable where id=" . $id;
    $data = query($sql);
    return $data;
}

function deleteMhs($id)
{
    $sql = "delete from myTable where id=" . $id;
    $data = query($sql);
    return $data ? true : false;
}

function updateMhs($id)
{
    $insert = [
        'nama' => $_POST['nama'],
        'alamat' => $_POST['alamat'],
        'nohp' => $_POST['nohp'],
    ];

    $sql = "update myTable set nama='" . $insert['nama'] . "', alamat='" . $insert['alamat'] . "', nohp='" . $insert['nohp'] . "' where id=" . $id;
    $update = query($sql);
    return $update ? true : false;
}

function addMhs()
{
    $insert = [
        'nama' => $_POST['nama'],
        'alamat' => $_POST['alamat'],
        'nohp' => $_POST['nohp'],
    ];

    $sql = "insert into myTable(nama, alamat, nohp) values('" . $insert['nama'] . "','" . $insert['alamat'] . "','" . $insert['nohp'] . "')";
    $insert = query($sql);
    return $insert ? true : false;
}
