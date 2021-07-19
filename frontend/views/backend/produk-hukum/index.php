<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use frontend\models\backend\ProdukHukum;
use yii\helpers\ArrayHelper;
use frontend\models\backend\MasterKategori;
use frontend\models\backend\MasterStatusPublish;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\ProdukHukumSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Produk Hukum';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="produk-hukum-index">


    <p>
        <?= Html::a('Tambah Produk Hukum', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    <?php
    $statusBerlaku = array(
        '10' => 'Berlaku',
        '0' => 'Tidak Berlaku',
    );
    ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            [
            'attribute' => 'tahun',
            'headerOptions' => ['style' => 'width:10%'],
            'filterType' => GridView::FILTER_SELECT2,
            'filter' => ArrayHelper::map(ProdukHukum::find()->orderBy('tahun')->groupBy(['tahun'])->asArray()->all(), 'tahun', 'tahun'),
            'filterWidgetOptions' => [
                'pluginOptions' => ['allowClear' => true],
            ],
            'filterInputOptions' => ['placeholder' => 'Tahun'],
            'value' => function($model) {
                return $model->tahun;
            }
        ],
            [
            'attribute' => 'nomor',
            'headerOptions' => ['style' => 'width:8%'],
        ],
            [
            'attribute' => 'judul',
            'headerOptions' => ['style' => 'width:40%'],
        ],
            [
            'attribute' => 'id_kategori',
            'label' => 'Kategori',
            'value' => function($model) {
                return $model->kategori->nama;
            },
            'filterType' => GridView::FILTER_SELECT2,
            'filter' => ArrayHelper::map(MasterKategori::find()->orderBy('id')->asArray()->all(), 'id', 'nama'),
            'filterWidgetOptions' => [
                'pluginOptions' => ['allowClear' => true],
            ],
            'filterInputOptions' => ['placeholder' => 'Kategori'],
        ],
            [
            'label' => 'Author',
            'format' => 'raw',
            'value' => function($model) {
                $modelUser = common\models\User::findOne($model->created_by);
                return ucfirst($modelUser->username);
            }
        ],
            [
            'attribute' => 'id_status_publish',
            'label' => 'Status',
            'headerOptions' => ['style' => 'width:8%'],
            'value' => function($model) {
                return $model->statusPublish->nama;
            },
            'filterType' => GridView::FILTER_SELECT2,
            'filter' => ArrayHelper::map(MasterStatusPublish::find()->orderBy('id')->asArray()->all(), 'id', 'nama'),
            'filterWidgetOptions' => [
                'pluginOptions' => ['allowClear' => true],
            ],
            'filterInputOptions' => ['placeholder' => 'Status'],
        ],
            [
            'attribute' => 'active',
            'label' => 'Status Berlaku/Tidak Berlaku',
            'headerOptions' => ['style' => 'width:8%'],
            'value' => function($model) {
                if ($model->active == 10) {
                    $status = 'Berlaku';
                } else {
                    $status = 'Tidak Berlaku';
                }
                return $status;
            },
            'filterType' => GridView::FILTER_SELECT2,
            'filter' => $statusBerlaku,
                'filterWidgetOptions' => [
                'pluginOptions' => ['allowClear' => true],
            ],
            'filterInputOptions' => ['placeholder' => 'Status'],
        ],
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
