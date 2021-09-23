<?php

use yii\helpers\Html;
use kartik\detail\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\backend\FileDownload */

$this->title = 'Detail File Download';
$this->params['breadcrumbs'][] = ['label' => 'File Downloads', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="file-download-view">
    <p align="right">
        <?= Html::a('Ubah', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?=
        Html::a('Hapus', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ])
        ?>
    </p>
    <div style="overflow-x:auto;">
        <table width="100%">
            <tr>
                <td valign="top">
                    <?php
                    $heading = 'Menampilkan ' . $model->nama;
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
                            'nama',
                            [
                                'attribute' => 'jumlah_download',
                                'format' => 'raw',
                                'label' => 'Jumlah Unduh',
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
