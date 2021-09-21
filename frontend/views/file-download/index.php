<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\search\FileDownloadSeach */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'File Downloads';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="file-download-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create File Download', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'nama',
            'file',
            'jumlah_download',
            'created_at',
            //'updated_at',
            //'created_by',
            //'updated_by',
            //'active',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
