<?php

use yii\helpers\Url;
use kartik\detail\DetailView;
?>

<!--page-title-area start-->
<section class="page-title-area" style="background-image: url(govtpress/assets/img/bg/page-title-bg1.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-xl-10 offset-xl-1">
                <div class="page-title text-center">
                    <h1>Detail</h1>
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
        <div class="row" style="color:black">
            <table width="100%">
                <tr>
                    <td valign="top">
                        <?php
                        $heading = 'Menampilkan ' . $model->kategori->nama . ' No ' . $model->nomor . ' Tahun ' . date('Y', strtotime($model->tahun));
                        echo DetailView::widget([
                            'model' => $model,
                            'condensed' => true,
                            'hover' => true,
                            'mode' => DetailView::MODE_VIEW,
                            'panel' => [
                                'heading' => $heading,
                                'type' => DetailView::TYPE_INFO,
                            ],
                            'buttons1' => '',
                            'hAlign' => 'left',
                            'vAlign' => 'top',
                            'attributes' => [
                                    [
                                    'attribute' => 'id_kategori',
                                    'label' => 'Kategori',
                                    'value' => $model->kategori->nama,
                                ],
                                'nomor',
                                'judul',
                                    [
                                    'attribute' => 'isi',
                                    'format' => 'raw',
                                ],
                                    [
                                    'attribute' => 'tahun',
                                    'type' => DetailView::INPUT_DATE,
                                    'value' => date('d-M-Y', strtotime($model->tahun))
                                ],
                                    [
                                    'attribute' => 'file',
                                    'label' => 'Unduh',
                                    'format' => 'raw',
                                    'value' => '<a href=' . $model->file . ' class="btn btn-md btn-primary" target="_blank"><i class="fa fa-download"></i></a>'
        ],
                            ]
                        ])
                        ?>
                    </td>
                </tr>
            </table>
        </div>        
    </div>
</section>
<!--events-details-area end-->