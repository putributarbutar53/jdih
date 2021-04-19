<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\MasterKategoriArtikel */

$this->title = 'Create Master Kategori Artikel';
$this->params['breadcrumbs'][] = ['label' => 'Master Kategori Artikels', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="master-kategori-artikel-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
