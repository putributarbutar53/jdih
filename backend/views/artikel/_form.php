<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use backend\models\MasterKategoriArtikel;
use mihaildev\ckeditor\CKEditor;
use kartik\file\FileInput;
use kartik\checkbox\CheckboxX;

/* @var $this yii\web\View */
/* @var $model backend\models\Artikel */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="artikel-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'judul')->textInput(['maxlength' => true]) ?>

    <?=
    $form->field($model, 'id_kategori_artikel')->widget(Select2::classname(), [
        'data' => ArrayHelper::map(MasterKategoriArtikel::find()->all(), 'id', 'nama'),
        'options' => ['placeholder' => 'Pilih Kategori'],
        'pluginOptions' => [
            'allowClear' => true
        ],
    ])->label('Kategori');
    ?>

    <?=
    $form->field($model, 'isi')->widget(CKEditor::className(), [
        'editorOptions' => [
            'preset' => 'full', //разработанны стандартные настройки basic, standard, full данную возможность не обязательно использовать
            'inline' => false, //по умолчанию false
    ]]);
    ?>
    <div style="overflow-x:auto;">
        <table width="100%">
            <tr>
                <td width="50%">
                    <?=
                    $form->field($model, 'thumbnail')->widget(FileInput::classname(), [
                        'options' => ['accept' => '*'],
                    ]);
                    ?>
                </td>
                <td width="1%"></td>
                <td width="50%">
                    <?=
                    $form->field($model, 'file')->widget(FileInput::classname(), [
                        'options' => ['accept' => '*'],
                    ]);
                    ?>
                </td>
            </tr>
        </table>        
    </div>
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
    ?>

    <div class="form-group">
        <?= Html::submitButton('Simpan', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
