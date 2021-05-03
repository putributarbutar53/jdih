<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;
?>
<!--page-title-area start-->
<section class="page-title-area" style="background-image: url(govtpress/assets/img/bg/page-title-bg1.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 offset-xl-3">
                <div class="page-title text-center">
                    <h1><?= $namaKategori ?></h1>
                    <div class="breadcrumb">
                        <ul class="breadcrumb-list">
                            <!--                            <li><a href="index-2.html">Home</a></li>
                                                        <li><a class="active" href="#">Blog</a></li>-->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--page-title-area end-->
<!--news-area star-->
<section class="news-area-02 pt-40 pb-100">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 col-lg-8 col-md-12">
                <div class="left-news-area">
                    <?php
                    foreach ($model as $x) {
                        echo '<div class="blog mb-40">
                        <div class="blog__img mb-50">
                            <img src="' . $x->thumbnail . '" alt="" style="max-height:400px;">
                        </div>
                        <div class="blog__content">
                            <h3 class="blog-title mb-15"><a href="' . Url::toRoute(['artikel/view', 'id' => $x->id]) . '">' . $x->judul . '</a></h3>
                            <div class="blog__content--meta mb-20">                               
                                <span><i class="far fa-calendar-alt"></i> ' . date("d M Y", strtotime($x->created_at)) . '</span>
                            </div>
                            <p class="mb-35">' . substr($x->isi, 0, 450) . '....</p>
                            <div class="blog__content--list d-flex align-items-center justify-content-between">
                                <a class="blog-btn" href="#"></a>
                                <a class="more_btn4" href="' . Url::toRoute(['artikel/view', 'id' => $x->id]) . '"><i class="far fa-arrow-right"></i> Lihat Detail</a>
                            </div>
                        </div>
                    </div>';
                    }
                    ?>
                </div>
            </div>
            <div class="col-xl-4 col-lg-4 col-md-12">
                <div class="right-news-area">
                    <div class="widget mb-40">
                        <div class="widget-title-box mb-30">
                            <span class="animate-border"></span>
                            <h6 class="widget-title">Artikel Terbaru</h6>
                        </div>
                        <ul class="recent-post">
                            <?php
                            $findArtikel = \backend\models\Artikel::find()
                                    ->where(['id_status_publish' => 2, 'active' => 10])
                                    ->orderBy(['created_at' => SORT_DESC])
                                    ->limit(4)
                                    ->all();

                            foreach ($findArtikel as $fA) {
                                echo '<li>
                                <div class="post d-flex align-items-center mb-30">
                                    <div class="post__thumb mr-20">
                                        <img src="' . $fA->thumbnail . '" alt="" style="max-height:80px;max-width:80px;">
                                    </div>
                                    <div class="post__content">
                                        <h6 class="post-title"><a href="' . Url::toRoute(['artikel/view', 'id' => $fA->id]) . '">' . $fA->judul . '</a></h6>
                                        <span><i class="fal fa-calendar-alt"></i> ' . date("d M Y", strtotime($fA->created_at)) . '</span>
                                    </div>
                                </div>
                            </li>';
                            }
                            ?>
                        </ul>
                    </div>
                    <div class="widget mb-40">
                        <div class="widget-title-box mb-30">
                            <span class="animate-border"></span>
                            <h6 class="widget-title">Kategori</h6>
                        </div>
                        <ul class="catagories">
                            <?php
                            $findKategoriArtikel = \backend\models\MasterKategoriArtikel::find()
                                    ->where(['active' => 10, 'id_status' => 2])
                                    ->all();

                            foreach ($findKategoriArtikel as $fAA) {
                                $count = \backend\models\Artikel::find()
                                        ->where(['id_kategori_artikel' => $fAA->id])
                                        ->andWhere(['id_status_publish' => 2])
                                        ->count();
                                echo '<li><a href="' . Url::toRoute(['artikel/index', 'id' => $fAA->id, 'namaKategori' => $fAA->nama]) . '">' . $fAA->nama . ' <span class="f-right">' . $count . '</span></a></li>';
                            }
                            ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <nav aria-label="Page navigation">
                    <ul class="pagination justify-content-center">
                        <li class="page-item"><a class="page-link" href="#"><i
                                    class="fal fa-arrow-left"></i></a></li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#"><i
                                    class="fal fa-arrow-right"></i></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</section>
<!--news-area end-->
