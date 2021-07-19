<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use frontend\models\backend\MasterKategori;
use mihaildev\ckeditor\CKEditor;
use kartik\file\FileInput;
use kartik\checkbox\CheckboxX;

/* @var $this yii\web\View */
/* @var $model backend\models\ProdukHukum */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="produk-hukum-form">

    <?php $form = ActiveForm::begin(['id' => 'idFormProdukHukum']); ?>
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
                <?php
//                $form->field($model, 'tahun')->widget(DatePicker::classname(), [
//                    'options' => ['value' => date('Y')],
//                    'removeButton' => false,
//                    'pluginOptions' => [
//                        'autoclose' => true,
//                        'format' => 'yyyy', //yyyy choose to year, yyyy-mm to month, yyyy-mm-dd to day
//                        'startView' => 2, //The actual range (0: day 1: day 2: year)
//                        'maxViewMode' => 2, //Maximum selection range (years)
//                        'minViewMode' => 2, //Minimum selection range (years)
//                    ]
//                ]);
                echo $form->field($model, 'tahun')->widget(DatePicker::classname(), [
                    'options' => ['placeholder' => 'Pilih Tahun'],
                    'pluginOptions' => [
                        'autoclose' => true,
                        'format' => 'dd-mm-yyyy',
                        'todayHighlight' => true,
                    ]
                ]);
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
    $statusBerlaku = array(
        '10' => 'Berlaku',
        '0' => 'Tidak Berlaku',
    );
    ?>
    <?=
    $form->field($model, 'active')->widget(Select2::classname(), [
        'data' => $statusBerlaku,
        'options' => ['placeholder' => 'Pilih Status'],
    'pluginOptions' => [
            'allowClear' => true
        ],
    ])->label('Status Berlaku');
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
    ?>

    <div class="form-group">
        <?= Html::submitButton('Simpan', ['class' => 'btn btn-success']) ?>
    </div>    
    <?php ActiveForm::end(); ?>
</div>