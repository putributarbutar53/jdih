<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\MasterProfilSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Master Profils';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="master-profil-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Master Profil', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'visi:ntext',
            'misi:ntext',
            'sejarah:ntext',
            'created_at',
            //'updated_at',
            //'created_by',
            //'updated_by',
            //'active',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
