<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\FileDownload */

$this->title = 'Tambah File Download';
$this->params['breadcrumbs'][] = ['label' => 'File Download', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="file-download-create">


    <?=
    $this->render('_form', [
        'model' => $model,
    ])
    ?>

</div>
