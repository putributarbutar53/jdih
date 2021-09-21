<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\FileDownloadSeach */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'File Download';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="file-download-index">


    <p>
        <?= Html::a('Tambah File Download', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?=
    GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'nama',
            'file',
            'jumlah_download',
            //'updated_at',
            //'created_by',
            //'updated_by',
            //'active',
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]);
    ?>


</div>
