<?php

use yii\helpers\Url;
use kartik\grid\GridView;
use yii\helpers\Html;
?>

<!--page-title-area start-->
<section class="page-title-area" style="background-image: url(govtpress/assets/img/bg/page-title-bg1.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-xl-10 offset-xl-1">
                <div class="page-title text-center">
                    <h1><?= $namaKategori ?></h1>
                    <div class="breadcrumb">
                        <ul class="breadcrumb-list">
                            <!--                            <li><a href="index-2.html">Home</a></li>
                                                        <li><a class="active" href="#">Events</a></li>-->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--page-title-area end-->
<!--events-details-area start-->
<section class="events-list-area pt-40 pb-100">
    <div class="container">
        <div class="row">
            <?php
            echo GridView::widget([
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
    'options' => ['style' => 'width:100%'],
    'columns' => [
                        ['class' => 'kartik\grid\SerialColumn'],
            [
            'attribute' => 'nomor',
            'headerOptions' => ['style' => 'width:15%'],
        ],
            [
            'attribute' => 'tahun',
            'headerOptions' => ['style' => 'width:15%'],
            'value' => function($model) {
                return date("Y", strtotime($model->tahun));
            }
        ],
            [
            'attribute' => 'judul',
            'headerOptions' => ['style' => 'width:70%'],
        ],
            [
                        'class' => 'kartik\grid\ActionColumn',
            'headerOptions' => ['style' => 'width:5%'],
            'template' => '{view}',
                        'buttons' => [
                            'view' => function ($url, $model) {
                                return Html::a('Detail', ['detail-produk-hukum', 'id' => $model->id], ['class' => 'btn btn-success']);
                            },
                        ],
                    ],
                ],
            ]);
            ?>
        </div>        
    </div>
</section>
<!--events-details-area end-->