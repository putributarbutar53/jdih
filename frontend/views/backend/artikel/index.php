<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use frontend\models\backend\MasterKategoriArtikel;
use yii\helpers\ArrayHelper;
use frontend\models\backend\MasterStatusPublish;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\ArtikelSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Artikel';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="artikel-index">

    <p>
        <?= Html::a('Tambah Artikel', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            [
            'attribute' => 'judul',
            'headerOptions' => ['style' => 'width:55%'],
        ],
        [
            'attribute' => 'id_kategori_artikel',
            'label' => 'Kategori',
            'value' => function($model) {
                return $model->kategoriArtikel->nama;
            },
            'filterType' => GridView::FILTER_SELECT2,
            'filter' => ArrayHelper::map(MasterKategoriArtikel::find()->orderBy('id')->asArray()->all(), 'id', 'nama'),
            'filterWidgetOptions' => [
                'pluginOptions' => ['allowClear' => true],
            ],
            'filterInputOptions' => ['placeholder' => 'Kategori'],
            'headerOptions' => ['style' => 'width:15%'],
        ],
            [
            'label' => 'Author',
            'format' => 'raw',
            'value' => function($model) {
                $modelUser = common\models\User::findOne($model->created_by);
                return ucfirst($modelUser->username);
            },
            'headerOptions' => ['style' => 'width:10%'],
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
        //'thumbnail',
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
