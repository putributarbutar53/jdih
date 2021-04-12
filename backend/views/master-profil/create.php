<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterProfil */

$this->title = 'Buat Master Profil';
$this->params['breadcrumbs'][] = ['label' => 'Master Profils', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="master-profil-create">

    <h1><?php Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
