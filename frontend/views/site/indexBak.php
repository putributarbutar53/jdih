<?php

/* @var $this yii\web\View */
use yii\helpers\Url;
use frontend\assets\AppAsset;
use yii\widgets\ActiveForm;
use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use backend\models\MasterKategori;
use mihaildev\ckeditor\CKEditor;
use kartik\file\FileInput;
use kartik\checkbox\CheckboxX;
use kartik\date\DatePicker;

$backend = AppAsset::register($this);
$this->title = 'My Yii Application';
?>
<!-- Start: Slider Section -->
<div data-ride="carousel" class="carousel slide" id="home-v1-header-carousel">
    <!-- Carousel slides -->
    <div class="carousel-inner">
        <div class="item active">
            <img alt="Home Slide" src="logo/background_gif.gif"/>
            <div class="container">
                <div class="carousel-caption">
                    <h2>JDIH KABUPATEN TOBA</h2>
                    <p style="font-size: 12pt">JDIH (Jaringan Dokumentasi dan Informasi Hukum) Kabupaten Toba merupakan sistem pendokumentasian Produk Hukum yang ada pada lingkungan Pemerintah Kabupaten Toba</p>
                    <div class="col-md-6">
                        <img alt="Home Slide" src="logo/pimpinan_daerah.jpg"/>
                    </div>
                        <div class="col-md-6">                        
                            <form action="http://libraria.demo.presstigers.com/index.html" class="banner-filter-box" method="get">
                            <div class="form-group">
                                <select name="catalog" id="catalog" class="form-control">
                                    <option>Search the Catalog</option>
                                    <option>Catalog 01</option>
                                    <option>Catalog 02</option>
                                    <option>Catalog 03</option>
                                    <option>Catalog 04</option>
                                    <option>Catalog 05</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="keywords">Search by Keyword</label>
                                <input class="form-control" placeholder="Search by Keyword" id="keywords" name="keywords" type="text">
                            </div>                            
                            <div class="form-group">
                                <select name="category" id="category" class="form-control">
                                    <option>All Categories</option>
                                    <option>Category 01</option>
                                    <option>Category 02</option>
                                    <option>Category 03</option>
                                    <option>Category 04</option>
                                    <option>Category 05</option>
                                </select>
                            </div>
                            <div class="clearfix"></div>
                            <input class="form-control" type="submit" value="Search">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End: Slider Section -->
<?php
$countProdukHukum = backend\models\ProdukHukum::find()->where(['id_status_publish' => 2, 'active' => 10])->count();
$countRancanganPh = \backend\models\RancanganPh::find()->where(['id_status_publish' => 2, 'active' => 10])->count();
$countBerita = \backend\models\Artikel::find()->where(['id_kategori_artikel' => 1, 'active' => 10])->count();
$countKegiatan = \backend\models\Artikel::find()->where(['id_kategori_artikel' => 2, 'active' => 10])->count();
?>
<!-- Start: Features -->
<section class="features">
    <div class="container-fluid">
        <div class="row">
            <ul>
                <li class="bg-yellow">
                    <div class="feature-box">
                        <i class="yellow"></i>
                        <h3>Produk Hukum</h3>
                        <p>Jumlah Produk Hukum: <?= $countProdukHukum ?></p>
                        <a class="yellow" href="#">
                            View Selection <i class="fa fa-long-arrow-right"></i>
                        </a>
                    </div>
                </li>
                <li class="bg-light-green">
                    <div class="feature-box">
                        <i class="light-green"></i>
                        <h3>Rancangan Produk Hukum</h3>
                        <p>Jumlah Rancangan Produk Hukum: <?= $countRancanganPh ?></p>
                        <a class="light-green" href="#">
                            View Selection <i class="fa fa-long-arrow-right"></i>
                        </a>
                    </div>
                </li>
                <li class="bg-blue">
                    <div class="feature-box">
                        <i class="blue"></i>
                        <h3>Berita</h3>
                        <p>Jumlah Berita: <?= $countBerita ?></p>
                        <a class="blue" href="#">
                            View Selection <i class="fa fa-long-arrow-right"></i>
                        </a>
                    </div>
                </li>
                <li class="bg-red">
                    <div class="feature-box">
                        <i class="red"></i>
                        <h3>Kegiatan</h3>
                        <p>Jumlah Kegiatan: <?= $countKegiatan ?></p>
                        <a class="red" href="#">
                            View Selection <i class="fa fa-long-arrow-right"></i>
                        </a>
                    </div>
                </li>
                <li class="bg-violet">
                    <div class="feature-box">
                        <i class="violet"></i>
                        <h3>Kontak</h3>
                        <p>Menampilkan Informasi Kontak JDIH Kabupaten Toba</p>
                        <a class="violet" href="#">
                            View Selection <i class="fa fa-long-arrow-right"></i>
                        </a>
                    </div>
                </li>
                <li class="bg-green">
                    <div class="feature-box">
                        <i class="green"></i>
                        <h3>Lokasi</h3>
                        <p>Menampilkan Informasi Lokasi JDIH Kabupaten Toba</p>
                        <a class="green" href="#">
                            View Selection <i class="fa fa-long-arrow-right"></i>
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</section>
<!-- End: Features -->

<!-- Start: Category Filter -->
<section class="category-filter section-padding meet-staff-box section-padding">
    <div class="container">
        <div class="center-content">
            <h2 class="section-title">Peraturan Terbaru</h2>
            <span class="underline center"></span>
            <p class="lead">Menampilkan peraturan terbaru yang telah publish di Kabupaten TOBA</p>
        </div>
        <div class="filter-buttons">
            <?php
            $findMasterKategori = backend\models\MasterKategori::find()->where(['active' => 10])->all();
            foreach ($findMasterKategori as $fmk) {
                echo '<div class="filter btn" data-filter=".' . $fmk->id . '">' . $fmk->nama . '</div>';
        }
            ?>            
        </div>
    </div>
    <div id="category-filter">
        <div class="container-fluid">
            <div class="row">
                <ul class="category-list staff-list">
            <?php
            $findProdukHukum = backend\models\ProdukHukum::find()->where(['id_status_publish' => 2, 'active' => 10])->all();
            foreach ($findProdukHukum as $fph) {
                echo '<li class="category-item ' . $fph->id_kategori . ' staff-member" >
                <figure>
                                <img src="logo/pdf_logo.png" alt="team" />
                            </figure>
                            <div class="content-block">
                                <div class="staff-info">
                                    <h4>' . $fph->kategori->nama . '</h4>
                                    <span class="designation">Nomor ' . $fph->nomor . ' tahun ' . $fph->tahun . '</span>                                    
                                    <a class="btn btn-primary" href="#">Read More</a>
                                </div>
                            </div>
            </li>';
            }
            ?>            
            </ul>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>    
</section>
<!-- Start: Category Filter -->
<section class="meet-staff-box section-padding">
    <div class="container-fluid">
        <div class="row">
            <div class="center-content">
                <h2 class="section-title">Berita & Kegiatan</h2>
                <span class="underline center"></span>
                <p class="lead">Menampilkan berita & kegiatan terbaru yang telah publish di Kabupaten TOBA</p>
            </div>

            <div class="staff-list">
                <?php
                $findArtikel = \backend\models\Artikel::find()
                        ->where(['id_status_publish' => 2, 'active' => 10])
                        ->orderBy(['created_at' => SORT_DESC])
                        ->limit(4)
                        ->all();
                foreach ($findArtikel as $fA) {
                    echo '<div class="staff-member">
                    <figure>
                        <img style="height:350px;" src="' . Yii::getAlias('@imageurl') . '/' . $fA->thumbnail . '" alt="team"/>
                    </figure>
                    <div class="content-block">
                        <div class="staff-info">
                            <h4>David J. Seleb</h4>
                            <span class="designation">Executive Director</span>
                            <ul class="social">
                                <li>
                                    <a href="#" target="_blank">
                                        <i class="fa fa-linkedin"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">
                                        <i class="fa fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">
                                        <i class="fa fa-skype"></i>
                                    </a>
                                </li>
                            </ul>
                            <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using content...</p>
                            <a class="btn btn-primary" href="#">Read More</a>
                        </div>
                    </div>
                </div>';
                }
                ?>                                
            </div>
        </div>
    </div>
</section>

<div class="fullwidth-social-icons">
    <div class="container-fluid">
        <div class="row">
            <ul>
                <li>
                    <a class="facebook" href="#" target="_blank">
                        <span><i class="fa fa-facebook-f"></i> <small>Facebook</small></span>
                    </a>
                </li>
                <li>
                    <a class="twitter" href="#" target="_blank">
                        <span><i class="fa fa-twitter"></i> <small>Twitter</small></span>
                    </a>
                </li>
                <li>
                    <a class="google" href="#" target="_blank">
                        <span><i class="fa fa-google-plus"></i> <small>Google</small></span>
                    </a>
                </li>
                <li>
                    <a class="rss" href="#" target="_blank">
                        <span><i class="fa fa-rss"></i> <small>Rss Feed</small></span>
                    </a>
                </li>
                <li>
                    <a class="linkedin" href="#" target="_blank">
                        <span><i class="fa fa-linkedin"></i> <small>Linkedin</small></span>
                    </a>
                </li>
                <li>
                    <a class="youtube" href="#" target="_blank">
                        <span><i class="fa fa-youtube"></i> <small>Youtube</small></span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
