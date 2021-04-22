<?php

use backend\models\MasterKategori;
use backend\models\MasterKategoriArtikel;
use yii\helpers\Url;

$countProdukHukum = backend\models\ProdukHukum::find()->where(['id_status_publish' => 2, 'active' => 10])->count();
$countRancanganPh = \backend\models\RancanganPh::find()->where(['id_status_publish' => 2, 'active' => 10])->count();
$countBerita = \backend\models\Artikel::find()->where(['id_kategori_artikel' => 1, 'active' => 10])->count();
$countKegiatan = \backend\models\Artikel::find()->where(['id_kategori_artikel' => 2, 'active' => 10])->count();
$findMasterKategori = MasterKategori::find()->all();
?>
<!--slider-area start-->
<div class="slider-area pos-rel">
    <div class="single-slider slider-height pos-rel d-flex align-items-center align-items-lg-end"
         style="background-image: url(govtpress/assets/img/slider/slider1.jpg);min-height: 700px">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-10 d-flex align-items-center" style="max-height: 500px;">
                    <div class="slider__content slider-one-content text-left">
                    <!--<span class="sub-title left_line mb-20 pl-55 animated wow fadeInUp"  data-wow-delay=".2s">Discover The City</span>-->
                        <h1 class="main-title mb-25 animated wow fadeInUp"  data-wow-delay=".3s">Jaringan Dokumentasi & Informasi Hukum (JDIH)</h1>
                        <h6 class="sub-title2 mb-40 animated wow fadeInUp"  data-wow-delay=".4s">Bagian Hukum dan Sekretariat Daerah Kabupaten Toba</h6>
                        <div class="time-weather animated wow fadeInUp"  data-wow-delay=".6s">
                            <div class="main-head-search">
                                <div class="place d-none d-lg-inline-block ml-45">
                                    <div class="place__search d-inline-block">
                                        <input type="text" class="form-control" placeholder="Search now">
                                    </div>
                                </div>
                                <div class="hamburger-menu d-lg-none d-md-block">
                                    <a href="javascript:void(0);">
                                        <i class="far fa-bars"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 d-none d-lg-block" style="max-height: 500px">
                    <div class="slider-hero-img">
                        <img class="img-fluid hero-right" src="logo/bupati.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--slider-area end-->
<section class="counter-area pb-50">
    <div class="container">
        <div class="counter-bg" style="background-image: url(assets/img/bg/counter-bg1.png);">
            <div class="row no-gutters align-items-center">
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <div class="counters d-flex align-items-center mb-30 ml-50">
                        <div class="counters__icon mr-15">
                            <i class="fal fa-book"></i>
                        </div>
                        <div class="counters__content">
                            <h1><span class="counter"><?= $countProdukHukum ?></span></h1>
                            <h6>Produk Hukum</h6>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <div class="counters d-flex align-items-center mb-30 ml-50">
                        <div class="counters__icon mr-15">
                            <i class="fal fa-book"></i>
                        </div>
                        <div class="counters__content">
                            <h1><span class="counter"><?= $countRancanganPh ?></span></h1>
                            <h6>Rancangan Produk Hukum</h6>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <div class="counters d-flex align-items-center mb-30 ml-35">
                        <div class="counters__icon mr-15">
                            <i class="fal fa-book"></i>
                        </div>
                        <div class="counters__content">
                            <h1><span class="counter"><?= $countBerita ?></span></h1>
                            <h6>Berita</h6>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <div class="counters d-flex align-items-center mb-30">
                        <div class="counters__icon mr-15">
                            <i class="fal fa-book"></i>
                        </div>
                        <div class="counters__content">
                            <h1><span class="counter"> <?= $countKegiatan ?></span></h1>
                            <h6>Kegiatan</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--service-area start-->
<section class="service-area pos-rel">
    <div class="container">
        <div class="service-bg pt-50 pb-50 white-bg">
            <div class="row">
                <div class="col-xl-6 col-lg-8 col-md-8">
                    <div class="section-title mb-50 ml-80">
                        <!--<h6 class="left_line pl-55">We Have The Power To Change City</h6>-->
                        <h2>Daftar Produk Hukum</h2>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-4 col-md-4">
                    <div class="experience-box text-right mr-100">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-10 offset-xl-1 col-lg-12">
                    <div class="services text-center">
                        <ul class="services__list">
                            <?php
                            foreach ($findMasterKategori as $fmk) {
                                echo '<li><a href="' . Url::toRoute(['produk-hukum/view', 'id' => $fmk->id, 'namaKategori' => $fmk->nama]) . '" class="service-btn"><i class="fal fa-book"></i> <span>' . $fmk->nama . '</span></a></li>';
}
                            ?>
                        </ul>
                    </div>
                </div>
                <!--scroll-target-btn-->
                <!--<a href="govtpress/#top-menu" class="scroll-target"><i class="far fa-long-arrow-down"></i></a>-->
                <!--scroll-target-btn-->
            </div>
        </div>
    </div>
</section>
<!--service-area end-->
<!--counter-area start-->

<!--counter-area end-->
<section class="events-routine-area grey-bg-03 pt-140 pb-60">
    <div class="container custom-conatainer-01">
        <div class="row">
            <div class="col-xl-4 offset-xl-4">
                <div class="section-title theme-border text-center mb-45">
                    <!--<h6 class="left_line">Our Events</h6>-->
                    <h2>Peraturan Terbaru</h2>
                </div>
            </div>
        </div>
        <?php
        $findProdukHukum = backend\models\ProdukHukum::find()
                ->where(['id_status_publish' => 2, 'active' => 10])
                ->orderBy(['created_at' => SORT_DESC])
                ->limit(5)
                ->all();

        foreach ($findProdukHukum as $fph) {
            echo '<div class="events-bg">
                        <div class="hover-content" style="background-image: url(assets/img/bg/routine-bg1.jpg);"></div>
                        <div class="row justify-content-sm-center">
                            <div class="col-xl-7 col-lg-6 col-md-5 col-sm-5">
                                <div class="events ml-60 pb-35">
                                    <h3 class="events-title" style="font-size:18pt">' . $fph->kategori->nama . ' Nomor ' . $fph->nomor . ' Tahun ' . $fph->tahun . '</h3>
                                    <span class="time-date"><i class="fal fa-clock"></i> ' . date("d-M-Y", strtotime($fph->created_at)) . '</span>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-4">
                                <div class="book-btn text-right">
                                    <a href="' . Url::toRoute(['produk-hukum/detail-produk-hukum', 'id' => $fph->id]) . '" class="theme_btn white_btn">Lihat Detail <i
                                            class="far fa-long-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>';
        }
        ?>
    </div>
</section>
<!--events-area end-->
<section class="events-area pt-50 pb-70">
    <div class="container">
        <div class="row align-items-center mb-60">
            <div class="col-xl-6 col-lg-5">
                <div class="section-title text-left">
                    <!--<h6 class="left_line pl-55">Artikel</h6>-->
                    <h2>Artikel</h2>
                </div>
            </div>
            <div class="col-xl-6 col-lg-7">
                <div class="events-wrapper text-right">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#all" role="tab"
                               aria-controls="home" aria-selected="true">Semua</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="conference-tab" data-toggle="tab" href="#berita" role="tab"
                               aria-controls="conference" aria-selected="false">Berita</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="festival-tab" data-toggle="tab" href="#kegiatan" role="tab"
                               aria-controls="festival" aria-selected="false">Kegiatan</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="tab-content pr-20" id="myTabContent">
            <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="home-tab">
                <div class="row">
                    <?php
                    $findArtikelAll = \backend\models\Artikel::find()
                            ->where(['id_status_publish' => 2, 'active' => 10])
                            ->orderBy(['created_at' => SORT_DESC])
                            ->limit(3)
                            ->all();
                    $findBerita = \backend\models\Artikel::find()
                            ->where(['id_status_publish' => 2, 'active' => 10])
                            ->andWhere(['id_kategori_artikel' => 1])
                            ->orderBy(['created_at' => SORT_DESC])
                            ->limit(3)
                            ->all();
                    $findArtikel = \backend\models\Artikel::find()
                            ->where(['id_status_publish' => 2, 'active' => 10])
                            ->andWhere(['id_kategori_artikel' => 2])
                            ->orderBy(['created_at' => SORT_DESC])
                            ->limit(3)
                            ->all();
                    foreach ($findArtikelAll as $fAA) {
                        echo '<div class="col-xl-4 col-lg-4 col-md-6">
                                    <div class="events pos-rel mb-60">
                                        <div class="events__img">
                                            <div class="events__img--thumb">
                                                <img src="' . Yii::getAlias('@imageurl') . '/' . $fAA->thumbnail . '" alt="">
                                            </div>
                                            <span><b>' . date('d', strtotime($fAA->created_at)) . '</b>' . date('M', strtotime($fAA->created_at)) . '</span>
                                        </div>
                                        <div class="events__content">
                                            <span class="tag mb-15">Conference</span>
                                            <h5 class="semi-title mb-15"><a href="' . Url::toRoute(['artikel/view', 'id' => $fAA->id]) . '">' . $fAA->judul . '</a></h5>
                                            <div class="events__content--meta">
                                                <span><i class="fal fa-bookmark"></i> ' . $fAA->kategoriArtikel->nama . '</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>';
                    }
                    ?>
                </div>
            </div>
            <div class="tab-pane fade" id="berita" role="tabpanel" aria-labelledby="conference-tab">
                <div class="row">
                    <?php
                    foreach ($findBerita as $fB) {
                        echo '<div class="col-xl-4 col-lg-4 col-md-6">
                                    <div class="events pos-rel mb-60">
                                        <div class="events__img">
                                            <div class="events__img--thumb">
                                                <img src="' . Yii::getAlias('@imageurl') . '/' . $fB->thumbnail . '" alt="">
                                            </div>
                                            <span><b>' . date('d', strtotime($fB->created_at)) . '</b>' . date('M', strtotime($fB->created_at)) . '</span>
                                        </div>
                                        <div class="events__content">
                                            <span class="tag mb-15">Conference</span>
                                            <h5 class="semi-title mb-15"><a href="' . Url::toRoute(['artikel/view', 'id' => $fAA->id]) . '">' . $fB->judul . '</a></h5>
                                            <div class="events__content--meta">
                                                <span><i class="fal fa-bookmark"></i> ' . $fB->kategoriArtikel->nama . '</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>';
                    }
                    ?>
                </div>
            </div>
            <div class="tab-pane fade" id="kegiatan" role="tabpanel" aria-labelledby="festival-tab">
                <div class="row">
                    <?php
                    foreach ($findArtikel as $fA) {
                        echo '<div class="col-xl-4 col-lg-4 col-md-6">
                                    <div class="events pos-rel mb-60">
                                        <div class="events__img">
                                            <div class="events__img--thumb">
                                                <img src="' . Yii::getAlias('@imageurl') . '/' . $fA->thumbnail . '" alt="">
                                            </div>
                                            <span><b>' . date('d', strtotime($fA->created_at)) . '</b>' . date('M', strtotime($fA->created_at)) . '</span>
                                        </div>
                                        <div class="events__content">
                                            <span class="tag mb-15">Conference</span>
                                            <h5 class="semi-title mb-15"><a href="' . Url::toRoute(['artikel/view', 'id' => $fAA->id]) . '">' . $fA->judul . '</a></h5>
                                            <div class="events__content--meta">
                                                <span><i class="fal fa-bookmark"></i> ' . $fA->kategoriArtikel->nama . '</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>';
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>
<!--events-area end-->  