<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterProfil */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="master-profil-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'visi')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'misi')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'sejarah')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?>

    <?= $form->field($model, 'created_by')->textInput() ?>

    <?= $form->field($model, 'updated_by')->textInput() ?>

    <?= $form->field($model, 'active')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
