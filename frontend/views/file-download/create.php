<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\FileDownload */

$this->title = 'Create File Download';
$this->params['breadcrumbs'][] = ['label' => 'File Downloads', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="file-download-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
