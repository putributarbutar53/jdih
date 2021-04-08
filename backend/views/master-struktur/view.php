<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\models\MasterJabatan;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterStruktur */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Master Strukturs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="master-struktur-view">

    <h1><?= Html::encode($this->title) ?></h1>

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
            'nip',
            'nama',
            [
            'label' => 'Jabatan',
            'value' => function($model) {
                $findJabatan = MasterJabatan::findOne($model->id_jabatan);
                return $findJabatan->nama;
            }
        ],
//            'created_at',
//            'updated_at',
//            'created_by',
//            'updated_by',
//            'active',
    ],
    ]) ?>

</div>
