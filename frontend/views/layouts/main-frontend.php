<?php

use backend\models\MasterKategori;
use backend\models\MasterKategoriArtikel;
use yii\helpers\Url;
?>

<html lang="zxx">


    <head>

        <!-- Meta -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">

        <!-- Title -->
        <title>..:: JDIH ::..</title>

        <!-- Favicon -->
        <link href="libraria/images/favicon.ico" rel="icon" type="image/x-icon" />

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i%7CLato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet" />
        <link href="libraria/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

        <!-- Mobile Menu -->
        <link href="libraria/css/mmenu.css" rel="stylesheet" type="text/css" />
        <link href="libraria/css/mmenu.positioning.css" rel="stylesheet" type="text/css" />

        <!-- Stylesheet -->
        <link href="libraria/style.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="libraria/js/html5shiv.min.js"></script>
        <script src="libraria/js/respond.min.js"></script>
        <![endif]-->
    </head>

    <body class="layout-v3">

        <!-- Start: Header Section -->
        <header id="header" class="navbar-wrapper" style="background-color: #3e3e3e; top:0px">
            <div class="container-fluid">
                <div class="row">
                    <nav class="navbar navbar-default">
                        <div class="menu-wrap">
                            <div class="navbar-header">
                                <div class="navbar-brand">
                                    <h1>
                                        <a href="<?= Url::toRoute(['index']) ?>">
                                            <img src="logo/logo.png" alt="JDIH" />
                                        </a>
                                    </h1>
                                </div>
                            </div>
                            <!-- Navigation -->
                            <div class="navbar-collapse hidden-sm hidden-xs">
                                <ul class="nav navbar-nav">
                                    <li class="dropdown">
                                        <a data-toggle="dropdown" class="dropdown-toggle disabled" href="index-2.html">Beranda</a>
                                    </li>
                                    <li class="dropdown">
                                        <a data-toggle="dropdown" class="dropdown-toggle disabled" href="#">Produk Hukum</a>
                                        <ul class="dropdown-menu">
                                            <?php
                                            $findMasterKategori = MasterKategori::find()->all();
                                            foreach ($findMasterKategori as $fmk) {
                                                echo "<li><a href='index-2.html'>$fmk->nama</a></li>";
                                            }
                                            ?>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a data-toggle="dropdown" class="dropdown-toggle disabled" href="books-media-list-view.html">Rancangan Produk Hukum</a>
                                        <ul class="dropdown-menu">
                                            <?php
                                            $findMasterKategori = MasterKategori::find()->all();
                                            foreach ($findMasterKategori as $fmk) {
                                                echo "<li><a href='index-2.html'>$fmk->nama</a></li>";
                                            }
                                            ?>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a data-toggle="dropdown" class="dropdown-toggle disabled" href="news-events-list-view.html">Artikel</a>
                                        <ul class="dropdown-menu">
                                            <?php
                                            $findMasterKategoriArtikel = MasterKategoriArtikel::find()->all();
                                            foreach ($findMasterKategoriArtikel as $fmka) {
                                                echo "<li><a href='libraria/news-events-list-view.html'>$fmka->nama</a></li>";
                                            }
                                            ?>
                                        </ul>
                                    </li>                                                                        
                                    <li><a href="contact.html">Kontak</a></li>
                                </ul>
                                <!-- Header Topbar -->
                                <div class="header-topbar hidden-md">
                                    <div class="topbar-links">
                                        <a href="signin.html"><i class="fa fa-lock"></i>Login / Register</a>
                                    </div>
                                </div>
                                <!-- Header Topbar -->
                            </div>
                            <div class="header-socialbar hidden-sm hidden-xs">
                                <ul class="social-links">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-rss"></i></a></li>
                                </ul>
                                <ul class="share-links">
                                    <li class="dropdown">
                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                            <i class="fa fa-share"></i>
                                        </a>
                                        <div class="dropdown-menu social-dropdown">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                <li><a href="#"><i class="fa fa-rss"></i></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="mobile-menu hidden-md hidden-lg">
                            <a href="#mobile-menu"><i class="fa fa-navicon"></i></a>
                            <div id="mobile-menu">
                                <ul>
                                    <li class="mobile-title">
                                        <h4>Navigation</h4>
                                        <a href="#" class="close"></a>
                                    </li>
                                    <li>
                                        <a href="index-2.html">Home</a>
                                        <ul>
                                            <li><a href="index-2.html">Home V1</a></li>
                                            <li><a href="home-v2.html">Home V2</a></li>
                                            <li><a href="home-v3.html">Home V3</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="books-media-list-view.html">Books &amp; Media</a>
                                        <ul>
                                            <li><a href="books-media-list-view.html">Books &amp; Media List View</a></li>
                                            <li><a href="books-media-gird-view-v1.html">Books &amp; Media Grid View V1</a></li>
                                            <li><a href="books-media-gird-view-v2.html">Books &amp; Media Grid View V2</a></li>
                                            <li><a href="books-media-detail-v1.html">Books &amp; Media Detail V1</a></li>
                                            <li><a href="books-media-detail-v2.html">Books &amp; Media Detail V2</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="news-events-list-view.html">News &amp; Events</a>
                                        <ul>
                                            <li><a href="news-events-list-view.html">News &amp; Events List View</a></li>
                                            <li><a href="news-events-detail.html">News &amp; Events Detail</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Pages</a>
                                        <ul>
                                            <li><a href="cart.html">Cart</a></li>
                                            <li><a href="checkout.html">Checkout</a></li>
                                            <li><a href="signin.html">Signin/Register</a></li>
                                            <li><a href="404.html">404/Error</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="blog.html">Blog</a>
                                        <ul>
                                            <li><a href="blog.html">Blog Grid View</a></li>
                                            <li><a href="blog-detail.html">Blog Detail</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="services.html">Services</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <!-- End: Header Section -->

        <?= $content ?>

        <!-- Start: Footer -->
        <footer class="site-footer">
            <div class="container">
                <div id="footer-widgets">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 widget-container">
                            <div id="text-2" class="widget widget_text">
                                <h3 class="footer-widget-title">Tentang</h3>
                                <span class="underline left"></span>
                                <div class="textwidget">
                                    JARINGAN DOKUMENTASI & INFORMASI HUKUM PEMERINTAH KABUPATEN TOBA
                                </div>                                
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-6 widget-container">
                            <div id="nav_menu-2" class="widget widget_nav_menu">
                                <h3 class="footer-widget-title">Peraturan Terbaru</h3>
                                <span class="underline left"></span>
                                <div class="menu-quick-links-container">
                                    <ul id="menu-quick-links" class="menu">
                                        <?php
                                        $findProdukHukum = backend\models\ProdukHukum::find()
                                                ->where(['id_status_publish' => 2, 'active' => 10])
                                                ->orderBy(['created_at' => SORT_DESC])
                                                ->limit(5)
                                                ->all();
                                        foreach ($findProdukHukum as $fPH) {
                                            echo "<li><a href='" . Url::toRoute(['index']) . "'>" . $fPH->kategori->nama . " Nomor " . $fPH->nomor . " Tahun " . $fPH->tahun . "</a></li>";
                                        }
                                        ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix hidden-lg hidden-md hidden-xs tablet-margin-bottom"></div>
                        <div class="col-md-2 col-sm-6 widget-container">
                            <div id="text-4" class="widget widget_text">
                                <h3 class="footer-widget-title">Jenis Peraturan</h3>
                                <span class="underline left"></span>
                                <div class="menu-quick-links-container">
                                    <ul id="menu-quick-links" class="menu">
                                        <?php
                                        $masterKategori = MasterKategori::find()->all();
                                        foreach ($masterKategori as $mk) {
                                            echo "<li><a href='" . Url::toRoute(['index']) . "'>$mk->nama</a></li>";
                                        }
                                        ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 widget-container">
                            <div class="widget twitter-widget">
                                <h3 class="footer-widget-title">Hubungi Kami</h3>
                                <span class="underline left"></span>
                                <address>
                                    <div class="info">
                                        <i class="fa fa-location-arrow"></i>
                                        <span>21 King Street, Melbourne, Victoria 3000 Australia</span>
                                    </div>
                                    <div class="info">
                                        <i class="fa fa-envelope"></i>
                                        <span><a href="mailto:support@libraria.com">support@libraria.com</a></span>
                                    </div>
                                    <div class="info">
                                        <i class="fa fa-phone"></i>
                                        <span><a href="tel:012-345-6789">+ 012-345-6789</a></span>
                                    </div>
                                </address>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sub-footer">
                <div class="container">
                    <div class="row">
                        <div class="footer-text col-md-3">
                            <p><a target="_blank" href="https://www.templateshub.net">Developed By Kominfo Toba</a></p>
                        </div>
                        <div class="col-md-9 pull-right">
                            <p><a target="_blank" href="https://www.templateshub.net">Copyright ©2021 Jaringan Dokumentasi dan Informasi Hukum Kabupaten Toba . All rights reserved</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- End: Footer -->

        <!-- jQuery Latest Version 1.x -->
        <script type="text/javascript" src="libraria/js/jquery-1.12.4.min.js"></script>

        <!-- jQuery UI -->
        <script type="text/javascript" src="libraria/js/jquery-ui.min.js"></script>

        <!-- jQuery Easing -->
        <script type="text/javascript" src="libraria/js/jquery.easing.1.3.js"></script>

        <!-- Bootstrap -->
        <script type="text/javascript" src="libraria/js/bootstrap.min.js"></script>

        <!-- Mobile Menu -->
        <script type="text/javascript" src="libraria/js/mmenu.min.js"></script>

        <!-- Harvey - State manager for media queries -->
        <script type="text/javascript" src="libraria/js/harvey.min.js"></script>

        <!-- Waypoints - Load Elements on View -->
        <script type="text/javascript" src="libraria/js/waypoints.min.js"></script>

        <!-- Facts Counter -->
        <script type="text/javascript" src="libraria/js/facts.counter.min.js"></script>

        <!-- MixItUp - Category Filter -->
        <script type="text/javascript" src="libraria/js/mixitup.min.js"></script>

        <!-- Owl Carousel -->
        <script type="text/javascript" src="libraria/js/owl.carousel.min.js"></script>

        <!-- Accordion -->
        <script type="text/javascript" src="libraria/js/accordion.min.js"></script>

        <!-- Responsive Tabs -->
        <script type="text/javascript" src="libraria/js/responsive.tabs.min.js"></script>

        <!-- Responsive Table -->
        <script type="text/javascript" src="libraria/js/responsive.table.min.js"></script>

        <!-- Masonry -->
        <script type="text/javascript" src="libraria/js/masonry.min.js"></script>

        <!-- Carousel Swipe -->
        <script type="text/javascript" src="libraria/js/carousel.swipe.min.js"></script>

        <!-- bxSlider -->
        <script type="text/javascript" src="libraria/js/bxslider.min.js"></script>

        <!-- Custom Scripts -->
        <script type="text/javascript" src="libraria/js/main.js"></script>

    </body>


</html>