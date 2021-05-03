<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\MasterJabatan */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Master Jabatan';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="master-jabatan-index">


    <p>
        <?= Html::a('Tambah Master Jabatan', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

    //            'id',
        'nama',
    //            'created_at',
//            'updated_at',
//            'created_by',
        //'updated_by',
            //'active',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
