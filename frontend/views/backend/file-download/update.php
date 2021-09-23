<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\backend\FileDownload */

$this->title = 'Ubah File Download: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'File Downloads', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="file-download-update">


    <?=
    $this->render('_form', [
        'model' => $model,
    ])
    ?>

</div>
