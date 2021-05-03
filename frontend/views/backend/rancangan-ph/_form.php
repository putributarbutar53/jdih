<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use backend\models\MasterKategori;
use mihaildev\ckeditor\CKEditor;
use kartik\file\FileInput;
use kartik\checkbox\CheckboxX;

/* @var $this yii\web\View */
/* @var $model backend\models\RancanganPh */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="rancangan-ph-form">

    <?php $form = ActiveForm::begin(); ?>
    <table width="100%">
        <tr>
            <td width="40%">
                <?=
                $form->field($model, 'id_kategori')->widget(Select2::classname(), [
                    'data' => ArrayHelper::map(MasterKategori::find()->all(), 'id', 'nama'),
                    'options' => ['placeholder' => 'Pilih Kategori'],
                    'pluginOptions' => [
                        'allowClear' => true
                    ],
                ])->label('Kategori');
                ?>
            </td>
            <td width="1%"></td>
            <td>
                <?= $form->field($model, 'nomor')->textInput(['maxlength' => true, 'type' => 'number']) ?>
            </td>
            <td width="1%"></td>
            <td width="20%">
                <?=
                $form->field($model, 'tahun')->widget(DatePicker::classname(), [
                    'options' => ['value' => date('Y')],
                    'removeButton' => false,
                    'pluginOptions' => [
                        'autoclose' => true,
                        'format' => 'yyyy', //yyyy choose to year, yyyy-mm to month, yyyy-mm-dd to day
                        'startView' => 2, //The actual range (0: day 1: day 2: year)
                        'maxViewMode' => 2, //Maximum selection range (years)
                        'minViewMode' => 2, //Minimum selection range (years)
                    ]
                ])
                ?>
            </td>
        </tr>
    </table>

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
    <?php
    $form->field($model, 'id_status_publish')->widget(CheckboxX::classname(), [
        'pluginOptions' => ['threeState' => false],
        'value' => 1,
    ])->label('Published');
    ?>
    <?php
    if ($model->isNewRecord) {
        $value = 0;
    } else {
        $value = ($model->id_status_publish == 1) ? 0 : 1;
    }
    echo CheckboxX::widget([
        'name' => 'id_status_publish',
        'value' => $value,
        'labelSettings' => [
            'label' => '<b>Published</b>',
            'position' => CheckboxX::LABEL_LEFT
        ],
        'pluginOptions' => ['threeState' => false],
        'disabled' => false,
        'options' => ['id' => 'id_status_publish'],
    ]);
    ?> <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
