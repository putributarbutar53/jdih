<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterStruktur */

$this->title = 'Buat Master Struktur';
$this->params['breadcrumbs'][] = ['label' => 'Master Strukturs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="master-struktur-create">

    <h1><?php Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
