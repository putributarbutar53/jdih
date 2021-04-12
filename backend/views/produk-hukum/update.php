<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\ProdukHukum */

$this->title = 'Ubah Produk Hukum: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Produk Hukums', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="produk-hukum-update">


    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
