<?php

use yii\helpers\Url;
use backend\models\MasterKategori;
use backend\models\MasterKategoriArtikel;

$countProdukHukum = backend\models\ProdukHukum::find()->where(['id_status_publish' => 2, 'active' => 10])->count();
$countRancanganPh = \backend\models\RancanganPh::find()->where(['id_status_publish' => 2, 'active' => 10])->count();
$countBerita = \backend\models\Artikel::find()->where(['id_kategori_artikel' => 1, 'active' => 10])->count();
$countKegiatan = \backend\models\Artikel::find()->where(['id_kategori_artikel' => 2, 'active' => 10])->count();
$findMasterKategori = MasterKategori::find()->all();
?>

<!doctype html>
<html class="no-js" lang="">


    <!-- Mirrored from www.devsnews.com/template/govtpress/govtpress/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 01 Apr 2021 09:59:12 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>GovtPress - Municipal and Government HTML5 Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="manifest" href="site.html">
        <link rel="shortcut icon" type="image/x-icon" href="govtpress/assets/img/favicon.ico">
        <!-- Place favicon.ico in the root directory -->

        <!-- CSS here -->
        <link rel="stylesheet" href="govtpress/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="govtpress/assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="govtpress/assets/css/animate.css">
        <link rel="stylesheet" href="govtpress/assets/css/magnific-popup.css">
        <link rel="stylesheet" href="govtpress/assets/css/all.min.css">
        <link rel="stylesheet" href="govtpress/assets/css/flaticon.css">
        <link rel="stylesheet" href="govtpress/assets/css/font.css">
        <link rel="stylesheet" href="govtpress/assets/css/themify-icons.css">
        <link rel="stylesheet" href="govtpress/assets/css/metisMenu.css">
        <link rel="stylesheet" href="govtpress/assets/css/nice-select.css">
        <link rel="stylesheet" href="govtpress/assets/css/slick.css">
        <link rel="stylesheet" href="govtpress/assets/css/main.css">
    </head>

    <body>
        <!--[if lte IE 9]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="govtpress/https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
            <![endif]-->

        <!-- Add your site or application content here -->
        <!-- preloader -->
        <div id="preloader">
            <div class="preloader">
                <span></span>
                <span></span>
            </div>
        </div>
        <!-- preloader end  -->
        <!-- header-area start -->
        <header class="transparent-head-one">
            <div class="header-top-area head-top black-bg2 pt-10 pb-10 d-none d-lg-block">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-7 col-lg-6">
                            <div class="top-cta text-right">
                                <span>Open Hours of City Government <b>Mon - Fri: 8.00 am - 6.00 pm</b></span>
                            </div>
                        </div>
                        <div class="col-xl-5 col-lg-6">
                            <div class="top-right-nav d-flex justify-content-end">
                                <div class="header-lang pr-25">
                                    <div class="header-lang__icon">
                                        <span>English <i class="far fa-chevron-down"></i></span>
                                    </div>
                                    <ul class="header-lang__list">
                                        <li><a href="govtpress/#">USA</a></li>
                                        <li><a href="govtpress/#">CHINA</a></li>
                                        <li><a href="govtpress/#">SPANISH</a></li>
                                        <li><a href="govtpress/#">GERMAN</a></li>
                                        <li><a href="govtpress/#">ARABIC</a></li>
                                    </ul>
                                </div>
                                <div class="top__social">
                                    <a href="govtpress/#"><i class="fab fa-facebook-f"></i></a>
                                    <a href="govtpress/#"><i class="fab fa-twitter"></i></a>
                                    <a href="govtpress/#"><i class="fab fa-behance"></i></a>
                                    <a href="govtpress/#"><i class="fab fa-youtube"></i></a>
                                    <a href="govtpress/#"><i class="fab fa-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-header-area">
                <div class="container">
                    <div class="row no-gutters align-items-center">
                        <div class="col-xl-2 col-lg-3 col-md-6 col-6">
                            <div class="logo">
                                <a class="logo-img" href="index-2.html"><img src="logo/logo.png"
                                                                             alt=""></a>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-8 d-none d-lg-block">
                            <div class="main-menu menu-01 d-none d-lg-block text-right">
                                <nav>
                                    <ul>
                                        <li><a href="<?= Url::toRoute(['site/index']) ?>">Beranda</a></li>
                                        <li><a href="#">Produk Hukum <i class="far fa-chevron-down"></i></a>
                                            <ul class="submenu">
                                                <?php
                                                foreach ($findMasterKategori as $fmk) {
                                                    echo "<li><a href='" . Url::toRoute(['produk-hukum/view', 'id' => $fmk->id, 'namaKategori' => $fmk->nama]) . "'>$fmk->nama</a></li>";
}
                                                ?>                                                
                                            </ul>
                                        </li>
                                        <li><a href="#">Rancangan Produk Hukum <i class="far fa-chevron-down"></i></a>
                                            <ul class="submenu">
                                                <?php
                                                foreach ($findMasterKategori as $fmk) {
                                                    echo "<li><a href='" . Url::toRoute(['index']) . "'>$fmk->nama</a></li>";
                                                }
                                                ?>
                                            </ul>
                                        </li>
                                        <li><a href="#">Artikel <i class="far fa-chevron-down"></i></a>
                                            <ul class="submenu">
                                                <?php
                                                $findMasterKategoriArtikel = MasterKategoriArtikel::find()->all();
                                                foreach ($findMasterKategoriArtikel as $fmka) {
                                                    echo "<li><a href='" . Url::toRoute(['index']) . "'>$fmka->nama</a></li>";
                                                }
                                                ?>
                                            </ul>
                                        </li>
                                        <li><a href="#">Pages <i class="far fa-chevron-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="govtpress/team.html">Our Team</a></li>
                                                <li><a href="govtpress/team-details.html">Team Details</a></li>
                                                <li><a href="govtpress/faq.html">Faq</a></li>
                                                <li><a href="govtpress/history.html">History</a></li>
                                                <li><a href="govtpress/contact.html">Contact</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6 col-6 text-right">
                            <div class="hamburger-menu d-md-block d-lg-none">
                                <a href="javascript:void(0);">
                                    <i class="far fa-bars"></i>
                                </a>
                            </div>
                            <div class="main-header-right-one d-none d-xl-block">
                                <div class="donate">
                                    <a href="govtpress/contact.html" class="theme_btn theme_btn2">SignIn/Register <i class="fal fa-long-arrow-right"></i></a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- header-area end -->

        <!-- slide-bar start -->
        <aside class="slide-bar">
            <div class="close-mobile-menu">
                <a href="govtpress/javascript:void(0);"><i class="fas fa-times"></i></a>
            </div>

            <!-- offset-sidebar start -->
            <div class="offset-sidebar">
                <div class="offset-widget offset-logo mb-30">
                    <a href="govtpress/index-2.html">
                        <img src="logo/logo.png" alt="logo">
                    </a>
                </div>
                <div class="offset-widget mb-40">
                    <div class="info-widget">
                        <h4 class="offset-title mb-20">About Us</h4>
                        <p class="mb-30">
                            But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain
                            was born and will give you a complete account of the system and expound the actual teachings of
                            the great explore
                        </p>
                        <a class="theme_btn theme_btn2" href="contact.html">Hubungi Kami</a>
                    </div>
                </div>
                <div class="offset-widget mb-30 pr-10">
                    <div class="info-widget info-widget2">
                        <h4 class="offset-title mb-20">Contact Info</h4>
                        <p> <i class="fal fa-address-book"></i> 23/A, Miranda City Likaoli Prikano, Dope</p>
                        <p> <i class="fal fa-phone"></i> +0989 7876 9865 9 </p>
                        <p> <i class="fal fa-envelope-open"></i> info@example.com </p>
                    </div>
                </div>
            </div>
            <!-- offset-sidebar end -->

            <!-- side-mobile-menu start -->
            <nav class="side-mobile-menu">
                <ul id="mobile-menu-active">
                    <li><a href="<?= Url::toRoute(['index']) ?>">Beranda</a></li>
                    <li><a href="#">Produk Hukum <i class="far fa-chevron-down"></i></a>
                        <ul class="submenu">
                            <?php
                            $findMasterKategori = MasterKategori::find()->all();
                            foreach ($findMasterKategori as $fmk) {
                                echo "<li><a href='" . Url::toRoute(['index']) . "'>$fmk->nama</a></li>";
                            }
                            ?>
                        </ul>
                    </li>
                    <li><a href="#">Rancangan Produk Hukum <i class="far fa-chevron-down"></i></a>
                        <ul class="submenu">
                            <?php
                            foreach ($findMasterKategori as $fmk) {
                                echo "<li><a href='" . Url::toRoute(['index']) . "'>$fmk->nama</a></li>";
                            }
                            ?>
                        </ul>
                    </li>
                    <li><a href="#">Artikel <i class="far fa-chevron-down"></i></a>
                        <ul class="submenu">
                            <?php
                            $findMasterKategoriArtikel = MasterKategoriArtikel::find()->all();
                            foreach ($findMasterKategoriArtikel as $fmka) {
                                echo "<li><a href='" . Url::toRoute(['index']) . "'>$fmka->nama</a></li>";
                            }
                            ?>
                        </ul>
                    </li>
                    <li><a href="#">Pages <i class="far fa-chevron-down"></i></a>
                        <ul class="submenu">
                            <li><a href="govtpress/team.html">Our Team</a></li>
                            <li><a href="govtpress/team-details.html">Team Details</a></li>
                            <li><a href="govtpress/faq.html">Faq</a></li>
                            <li><a href="govtpress/history.html">History</a></li>
                            <li><a href="govtpress/contact.html">Contact</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <!-- side-mobile-menu end -->
        </aside>
        <div class="body-overlay"></div>
        <!-- slide-bar end -->

        <main>            
            <?= $content ?>
        </main>
        <!--footer-area start-->
        <footer class="footer-area pos-rel black-bg-soft pt-100">
            <div class="container">
                <div class="row mb-30">
                    <div class="col-xl-4 col-lg-6 col-md-8">
                        <div class="footer__widget mb-25 pr-40">
                            <div class="footer-box d-sm-flex justify-content-between">
                                <div class="logo-area">
                                    <a href="govtpress/index-2.html" class="footer-logo mb-30"><img
                                            src="govtpress/assets/img/logo/footer-logo1.png" alt=""></a>
                                </div>
                            </div>
                            <p class="mb-35">GovtPress is one of the best government sites on the market. Discover our
                                multiple awards and recognitions. You are always welcome in our city! Please visit us and
                                enjoy! Welcome to Your Opportunity</p>
                            <div class="foter__social mt-10">
                                <a href="govtpress/#"><i class="fab fa-facebook-f"></i></a>
                                <a href="govtpress/#"><i class="fab fa-twitter"></i></a>
                                <a href="govtpress/#"><i class="fab fa-instagram"></i></a>
                                <a href="govtpress/#"><i class="fab fa-google"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-4">
                        <div class="footer__widget mb-30">
                            <h6 class="fot-title mb-30">More Pages</h6>
                            <ul class="fot-list">
                                <li><a href="govtpress/#">Online Service</a></li>
                                <li><a href="govtpress/#">Residents</a></li>
                                <li><a href="govtpress/#">Business</a></li>
                                <li><a href="govtpress/#">Visiting</a></li>
                                <li><a href="govtpress/#">Employment</a></li>
                                <li><a href="govtpress/#">Education</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-4">
                        <div class="footer__widget mb-30">
                            <h6 class="fot-title mb-30">Govt. Info</h6>
                            <ul class="fot-list">
                                <li><a href="govtpress/#">Why choose us</a></li>
                                <li><a href="govtpress/#">Our solutions</a></li>
                                <li><a href="govtpress/#">Partners</a></li>
                                <li><a href="govtpress/#">Core values</a></li>
                                <li><a href="govtpress/#">Our projects</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-8">
                        <div class="footer__widget mb-30">
                            <h6 class="fot-title mb-30">News Feeds</h6>
                            <div class="post d-flex align-items-center mb-10">
                                <div class="post__thumb mr-20">
                                    <img src="govtpress/assets/img/news/post1.jpg" alt="">
                                </div>
                                <div class="post__content">
                                    <span><i class="fal fa-calendar-alt"></i> 24th November 2020</span>
                                    <h6 class="fot-title"><a href="govtpress/news-details.html">Lorem ipsum dolor sit amet, co
                                            nsectetur adipisicing elit</a></h6>
                                </div>
                            </div>
                            <div class="post d-flex align-items-center mb-10">
                                <div class="post__thumb mr-20">
                                    <img src="govtpress/assets/img/news/post2.jpg" alt="">
                                </div>
                                <div class="post__content">
                                    <span><i class="fal fa-calendar-alt"></i> 26th November 2020</span>
                                    <h6 class="fot-title"><a href="govtpress/news-details.html">Inspire Design Decision With Ott Storch When co
                                            nsectetur</a></h6>
                                </div>
                            </div>
                            <div class="post d-flex align-items-center">
                                <div class="post__thumb mr-20">
                                    <img src="govtpress/assets/img/news/post3.jpg" alt="">
                                </div>
                                <div class="post__content">
                                    <span><i class="fal fa-calendar-alt"></i> 28th November 2020</span>
                                    <h6 class="fot-title"><a href="govtpress/news-details.html">Storch Design Decision With Ott Storch When , co
                                            nsectetur</a></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-copy-right black-bg-soft2 pt-25 pb-25">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-4 col-md-8">
                            <div class="fot-nav">
                                <ul class="fot-nav-list">
                                    <li><a href="govtpress/#">Terms & Conditions</a></li>
                                    <li><a href="govtpress/#">Refund Policy</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-8 col-md-4">
                            <div class="copy-right-area-02 text-right">
                                <span>Copyright By <a href="govtpress/#">BDevs</a> - 2020</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!--footer-area end-->



        <!-- JS here -->
        <script src="govtpress/assets/js/vendor/modernizr-3.5.0.min.js"></script>
        <script src="govtpress/assets/js/vendor/jquery-3.5.1.min.js"></script>
        <script src="govtpress/assets/js/popper.min.js"></script>
        <script src="govtpress/assets/js/bootstrap.min.js"></script>
        <script src="govtpress/assets/js/owl.carousel.min.js"></script>
        <script src="govtpress/assets/js/isotope.pkgd.min.js"></script>
        <script src="govtpress/assets/js/slick.min.js"></script>
        <script src="govtpress/assets/js/jquery.meanmenu.min.js"></script>
        <script src="govtpress/assets/js/metisMenu.min.js"></script>
        <script src="govtpress/assets/js/jquery.nice-select.js"></script>
        <script src="govtpress/assets/js/ajax-form.js"></script>
        <script src="govtpress/assets/js/wow.min.js"></script>
        <script src="govtpress/assets/js/jquery.scrollUp.min.js"></script>
        <script src="govtpress/assets/js/imagesloaded.pkgd.min.js"></script>
        <script src="govtpress/assets/js/jquery.magnific-popup.min.js"></script>
        <script src="govtpress/assets/js/jquery.easypiechart.js"></script>
        <script src="govtpress/assets/js/tilt.jquery.js"></script>
        <script src="govtpress/assets/js/plugins.js"></script>
        <script src="govtpress/assets/js/main.js"></script>
    </body>


    <!-- Mirrored from www.devsnews.com/template/govtpress/govtpress/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 01 Apr 2021 09:59:31 GMT -->
</html>