<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\grid\GridView;
?>
<!--page-title-area start-->
<section class="page-title-area" style="background-image: url(govtpress/assets/img/bg/page-title-bg1.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 offset-xl-3">
                <div class="page-title text-center">
                    <h1>File Download</h1>
                    <div class="breadcrumb">
                        <ul class="breadcrumb-list">
                            <!--                            <li><a href="index-2.html">Home</a></li>
                                                        <li><a class="active" href="#">Team</a></li>-->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--page-title-area end-->
<!--team-biography-area start-->
<section class="team-biography-area pb-30">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="biographs">
                    <?php
                    echo GridView::widget([
                        'dataProvider' => $dataProvider,
                        'filterModel' => $searchModel,
                        'options' => ['style' => 'width:100%'],
                        'columns' => [
                            ['class' => 'yii\grid\SerialColumn'],
                            // 'id',
                            [
                                'attribute' => 'nama',
                                'headerOptions' => ['style' => 'width:88%'],
                            ],
                            [
                                'label' => 'File Download',
                                'attribute' => 'file',
                                'format' => 'raw',
                                'headerOptions' => ['style' => 'width:12%'],
                                'value' => function ($model) {
                                    return '<a href=' . $model->file . ' class="btn btn-sm btn-primary" target="_blank"><i class="fa fa-download"></i></a>';
                                }
                            ],
                        ],
                    ]);
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>
<!--team-biography-area end-->