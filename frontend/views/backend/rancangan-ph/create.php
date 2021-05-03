<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\RancanganPh */

$this->title = 'Buat Rancangan Produk Hukum';
$this->params['breadcrumbs'][] = ['label' => 'Rancangan Produk Hukum', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="rancangan-ph-create">

    <h1><?php Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
