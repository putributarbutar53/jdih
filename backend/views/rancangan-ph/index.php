<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use backend\models\RancanganPh;
use yii\helpers\ArrayHelper;
use backend\models\MasterKategori;
use backend\models\MasterStatusPublish;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\RancanganPhSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Rancangan Produk Hukum';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="rancangan-ph-index">

    <h1><?php Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Tambah Rancangan Produk Hukum', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?=
    GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute' => 'tahun',
                'headerOptions' => ['style' => 'width:10%'],
                'filterType' => GridView::FILTER_SELECT2,
                'filter' => ArrayHelper::map(RancanganPh::find()->orderBy('tahun')->groupBy(['tahun'])->asArray()->all(), 'tahun', 'tahun'),
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
    ]);
    ?>


</div>
