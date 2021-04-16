<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterProfil */

$this->title = 'Detail Master Profil';
$this->params['breadcrumbs'][] = ['label' => 'Master Profils', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="master-profil-view">

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
            [
            'attribute' => 'visi',
            'format' => 'raw',
        ],
        [
            'attribute' => 'misi',
            'format' => 'raw',
        ],
        [
            'attribute' => 'sejarah',
            'format' => 'raw',
        ],
    //            'created_at',
//            'updated_at',
//            'created_by',
//            'updated_by',
//            'active',
    ],
    ]) ?>

</div>
