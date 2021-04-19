<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\search\RancanganPhSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Rancangan Phs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="rancangan-ph-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Rancangan Ph', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'id_kategori',
            'nomor',
            'tahun',
            'judul:ntext',
            //'isi:ntext',
            //'file',
            //'id_status_publish',
            //'created_at',
            //'updated_at',
            //'created_by',
            //'updated_by',
            //'active',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
