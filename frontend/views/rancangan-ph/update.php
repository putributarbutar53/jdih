<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\RancanganPh */

$this->title = 'Update Rancangan Ph: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Rancangan Phs', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="rancangan-ph-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
