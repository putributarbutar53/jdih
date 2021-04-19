<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\search\RancanganPhSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="rancangan-ph-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'id_kategori') ?>

    <?= $form->field($model, 'nomor') ?>

    <?= $form->field($model, 'tahun') ?>

    <?= $form->field($model, 'judul') ?>

    <?php // echo $form->field($model, 'isi') ?>

    <?php // echo $form->field($model, 'file') ?>

    <?php // echo $form->field($model, 'id_status_publish') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <?php // echo $form->field($model, 'updated_at') ?>

    <?php // echo $form->field($model, 'created_by') ?>

    <?php // echo $form->field($model, 'updated_by') ?>

    <?php // echo $form->field($model, 'active') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
