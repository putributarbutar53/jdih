<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterStatusPublish */

$this->title = 'Create Master Status Publish';
$this->params['breadcrumbs'][] = ['label' => 'Master Status Publishes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="master-status-publish-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
