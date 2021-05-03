<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\ProdukHukum */

$this->title = 'Create Produk Hukum';
$this->params['breadcrumbs'][] = ['label' => 'Produk Hukums', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="produk-hukum-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>