<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterKategoriArtikel */

$this->title = 'Update Master Kategori Artikel: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Master Kategori Artikels', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="master-kategori-artikel-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
