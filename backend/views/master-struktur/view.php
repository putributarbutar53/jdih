<?php

use yii\helpers\Html;
use kartik\detail\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\MasterStruktur */

$this->title = 'Detail Master Struktur';
$this->params['breadcrumbs'][] = ['label' => 'Master Strukturs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="master-struktur-view">

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>
    <div style="overflow-x:auto;">
        <table width="100%">
        <tr>
            <td valign="top">
                <?php
                echo DetailView::widget([
                    'model' => $model,
                    'condensed' => true,
                    'hover' => true,
                    'mode' => DetailView::MODE_VIEW,
                    'panel' => [
                        'type' => DetailView::TYPE_INFO,
                    ],
                    'buttons1' => '',
                    'hAlign' => 'left',
                    'vAlign' => 'top',
                    'attributes' => [
                        [
                            'attribute' => 'nip',
                            'label' => 'NIP',
                            'value' => $model->nip,
                        ],
                        [
                            'attribute' => 'nama',
                        ],
                        [
            'attribute' => 'id_jabatan',
            'label' => 'Jabatan',
            'value' => $model->jabatan->nama,
        ],
        [
                            'attribute' => 'foto',
                            'label' => 'Foto',
                            'format' => 'raw',
                            'value' => Html::img($model->foto, ['width' => 400])
                        ],
                    ]
                ])
                ?>
            </td>
        </tr>
    </table>
    </div>

</div>
