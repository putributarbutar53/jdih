<?php

use yii\helpers\Html;
use kartik\detail\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Artikel */

$this->title = 'Detail Artikel';
$this->params['breadcrumbs'][] = ['label' => 'Artikels', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="artikel-view">


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

    <?php
    DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'judul',
            'slug',
            'id_kategori_artikel',
            'isi:ntext',
            'thumbnail',
            'file',
            'id_status_publish',
            'created_at',
            'updated_at',
            'created_by',
            'updated_by',
            'active',
        ],
    ])
    ?>
    <div style="overflow-x:auto;">
        <table width="100%">
        <tr>
            <td valign="top">
                <?php
$heading = 'Menampilkan ' . $model->kategoriArtikel->nama;
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
            'attribute' => 'id_kategori_artikel',
            'label' => 'Kategori',
            'value' => $model->kategoriArtikel->nama,
        ],
        'judul',
            [
            'attribute' => 'isi',
            'format' => 'raw',
        ],
//            ['attribute' => 'tahun', 'type' => DetailView::INPUT_DATE],
        [
                            'attribute' => 'thumbnail',
                            'label' => 'Thumbnail',
                            'format' => 'raw',
                            'value' => Html::img($model->thumbnail, ['width' => 400])
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
