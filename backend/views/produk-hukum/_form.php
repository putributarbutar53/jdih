<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use backend\models\MasterKategori;
use mihaildev\ckeditor\CKEditor;
use kartik\file\FileInput;

/* @var $this yii\web\View */
/* @var $model backend\models\ProdukHukum */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="produk-hukum-form">

    <?php $form = ActiveForm::begin(); ?>

    <?=
    $form->field($model, 'id_kategori')->widget(Select2::classname(), [
        'data' => ArrayHelper::map(MasterKategori::find()->all(), 'id', 'nama'),
        'options' => ['placeholder' => 'Pilih Kategori'],
        'pluginOptions' => [
            'allowClear' => true
        ],
    ])->label('Kategori');
    ?>

    <?= $form->field($model, 'nomor')->textInput(['maxlength' => true]) ?>

    <?=
    $form->field($model, 'tahun')->widget(DatePicker::classname(), [
        'options' => ['placeholder' => 'Pilih Tanggal'],
        'pluginOptions' => [
            'autoclose' => true,
            'todayHighlight' => true,
            'todayBtn' => true,
        ]
    ]);
    ?>

    <?= $form->field($model, 'judul')->textInput(['maxlength' => true]) ?>

    <?=
    $form->field($model, 'isi')->widget(CKEditor::className(), [
        'editorOptions' => [
            'preset' => 'full', //разработанны стандартные настройки basic, standard, full данную возможность не обязательно использовать
            'inline' => false, //по умолчанию false
    ]]);
    ?>

    <?=
    $form->field($model, 'file')->widget(FileInput::classname(), [
        'options' => ['accept' => '*'],
    ]);
    ?>
    <?= $form->field($model, 'id_status_publish')->checkbox(array('label' => 'Published')); ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
