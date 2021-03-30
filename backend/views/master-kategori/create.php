<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterKategori */

$this->title = 'Create Master Kategori';
$this->params['breadcrumbs'][] = ['label' => 'Master Kategoris', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="master-kategori-create">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
