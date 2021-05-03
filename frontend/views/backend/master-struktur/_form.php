<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use frontend\models\backend\MasterJabatan;
use kartik\file\FileInput;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterStruktur */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="master-struktur-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nip')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>

    <?=
    $form->field($model, 'id_jabatan')->widget(Select2::classname(), [
        'data' => ArrayHelper::map(MasterJabatan::find()->all(), 'id', 'nama'),
        'options' => ['placeholder' => 'Pilih Jabatan'],
        'pluginOptions' => [
            'allowClear' => true
        ],
    ])->label('Kategori');
    ?>
<?=
    $form->field($model, 'foto')->widget(FileInput::classname(), [
        'options' => ['accept' => '*'],
]);
?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
