<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterKategoriArtikel */

$this->title = 'Buat Master Kategori Artikel';
$this->params['breadcrumbs'][] = ['label' => 'Master Kategori Artikels', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="master-kategori-artikel-create">

    <h1><?php Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
