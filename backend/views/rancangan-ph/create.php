<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\RancanganPh */

$this->title = 'Create Rancangan Ph';
$this->params['breadcrumbs'][] = ['label' => 'Rancangan Phs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="rancangan-ph-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
