<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterKategoriArtikel */

$this->title = 'Detail Kategori Artikel';
$this->params['breadcrumbs'][] = ['label' => 'Master Kategori Artikels', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="master-kategori-artikel-view">


    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'slug',
            'nama',
        [
            'label' => 'Status',
            'value' => function($model) {
                $findStatus = frontend\models\backend\MasterStatus::findOne($model->id_status);
                return $findStatus->nama;
            }
        ],
//            'id_status',
//            'created_at',
//            'updated_at',
//            'created_by',
//            'updated_by',
//            'active',
    ],
    ]) ?>

</div>
