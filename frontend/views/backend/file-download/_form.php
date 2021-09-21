<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\widgets\FileInput;

/* @var $this yii\web\View */
/* @var $model backend\models\FileDownload */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="file-download-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>


    <?=
    $form->field($model, 'file')->widget(FileInput::classname(), [
        'options' => ['accept' => '*']])->label('File');
    ?>
    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
