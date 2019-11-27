<?php
session_start();
define("IS_INDEX", true);
require_once("apps.php");

if (isset($_GET['page'])) {
    $page = $_GET['page'];
} else {
    $page = "login";
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
        Khoerul Umam
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />

</head>

<body class="">


    <?php if ($page != 'login') { ?>
        <div class="wrapper ">
            <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">

                <div class="logo">
                    <a href="" class="simple-text logo-normal">
                        Khoerul Umam
                    </a>
                </div>
                <div class="sidebar-wrapper">
                    <ul class="nav">
                        <?php $menus = get_menu($_SESSION['id_level']);
                            while ($row = mysqli_fetch_assoc($menus)) { ?>
                            <li class="nav-item <?php if ($_GET['page'] == $row['url']) echo 'active'; ?>">
                                <a class="nav-link" href="index.php?page=<?php echo $row['url']; ?>">
                                    <i class="material-icons">dashboard</i>
                                    <p><?php echo $row['nama_menu']; ?></p>
                                </a>
                            <?php $allowedPages[] = $row['url'];
                                } ?>
                            </li>
                    </ul>
                </div>
            </div>
            <div class="main-panel">
                <!-- Navbar -->
                <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
                    <div class="container-fluid">
                        <div class="navbar-wrapper">
                            <a class="navbar-brand" href="#pablo">Dashboard</a>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end">
                            <ul class="navbar-nav">
                                <li class="nav-item dropdown">
                                    <a class="nav-link" href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">person</i>
                                        <p class="d-lg-none d-md-block">
                                            Account
                                        </p>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                                        <a class="dropdown-item" href="#">Profile</a>
                                        <a class="dropdown-item" href="#">Settings</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="index.php?page=logout">Log out</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            <?php } ?>
            <!-- End Navbar -->

            <div class="content">
                <div class="container-fluid">
                    <?php


                    $kecuali = [
                        'login',
                        'proses-login',

                    ];

                    $bypass = [
                        'logout'
                    ];

                    if (!in_array($page, $kecuali)) {
                        if (!isset($_SESSION['username'])) {
                            redirect_to('login');
                        }
                    }

                    if (isset($_SESSION['username'])) {
                        if ($page == 'login') {
                            redirect_to('dashboard');
                        }

                        if (in_array($page, $allowedPages) == false && in_array($page, $bypass) == false) {
                            die("Not Allowed");
                        }
                    }

                    require_once($page . ".php");
                    ?>
                </div>
            </div>

            <footer class="footer">
                <div class="container-fluid">
                    <nav class="float-left">
                        <ul>
                            <li>
                                <a href="">
                                    Khoerul Umam
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    4611417010
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    Ilmu Komputer
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    UNNES
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <div class="copyright float-right">
                        &copy;
                        <script>
                            document.write(new Date().getFullYear())
                        </script>, made with <i class="material-icons">favorite</i> by
                        <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a> for a better web.
                    </div>
                </div>
            </footer>
            </div>
        </div>
        <script src="assets/js/core/jquery.min.js"></script>
        <script src="assets/js/core/popper.min.js"></script>
        <script src="assets/js/core/bootstrap-material-design.min.js"></script>
        <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
        <script src="assets/js/plugins/moment.min.js"></script>
        <script src="assets/js/material-dashboard.js?v=2.1.1" type="text/javascript"></script>

</body>

</html>