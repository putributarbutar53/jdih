<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\MasterKategoriArtikelSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Master Kategori Artikel';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="master-kategori-artikel-index">


    <p>
        <?= Html::a('Tambah Master Kategori Artikel', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

    //            'id',
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
        //'updated_at',
            //'created_by',
            //'updated_by',
            //'active',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
