<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\MasterProfil */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Master Profil';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="master-profil-index">

    <p>
        <?php
        $findProfil = \backend\models\MasterProfil::find()
                ->where(['active' => 10])
                ->all();
        if ($findProfil == Null) {
            echo Html::a('Tambah Master Profil', ['create'], ['class' => 'btn btn-success']);
        }
        ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

    //            'id'
        [
            'attribute' => 'visi',
            'format' => 'raw',
            'headerOptions' => ['style' => 'width:30%'],
            'contentOptions' => ['style' => 'width:200px; white-space: normal;'],
        ],
        [
            'attribute' => 'misi',
            'format' => 'raw',
            'headerOptions' => ['style' => 'width:30%'],
            'contentOptions' => ['style' => 'width:200px; white-space: normal;'],
        ],
        [
            'attribute' => 'sejarah',
            'format' => 'raw',
            'headerOptions' => ['style' => 'width:40%'],
            'contentOptions' => ['style' => 'width:200px; white-space: normal;'],
        ],
        //            'created_at',
        //'updated_at',
            //'created_by',
            //'updated_by',
            //'active',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
