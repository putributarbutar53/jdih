<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\MasterStatus;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterKategori */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="master-kategori-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'slug')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>
    <?=
    $form->field($model, 'id_status')->widget(Select2::classname(), [
        'data' => ArrayHelper::map(MasterStatus::find()->all(), 'id', 'nama'),
        'options' => ['placeholder' => 'Pilih Status'],
        'pluginOptions' => [
            'allowClear' => true
        ],
    ])->label('Kategori');
    ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
