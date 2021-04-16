<?php

use yii\helpers\Html;
use yii\grid\GridView;
use backend\models\MasterJabatan;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\MasterStruktur */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Master Struktur';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="master-struktur-index">


    <p>
        <?= Html::a('Tambah Master Struktur', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

    //            'id',
        'nip',
        'nama',
        [
            'label' => 'Jabatan',
            'value' => function($model) {
                $findJabatan = MasterJabatan::findOne($model->id_jabatan);
                return $findJabatan->nama;
            }
        ],
//        'id_jabatan',
//            'created_at',
        //'updated_at',
            //'created_by',
            //'updated_by',
            //'active',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
