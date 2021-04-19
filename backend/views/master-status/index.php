<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\MasterStatusSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Master Statuses';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="master-status-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Master Status', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'nama',
            'created_at',
            'updated_at',
            'created_by',
            //'updated_by',
            //'active',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
