<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\RancanganPh */

$this->title = 'Ubah Rancangan Ph: ' . $model->id;
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
