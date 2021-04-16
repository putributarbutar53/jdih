<?php

namespace backend\controllers;

use Yii;
use backend\models\RancanganPh;
use backend\models\search\RancanganPhSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use yii\helpers\FileHelper;

/**
 * RancanganPhController implements the CRUD actions for RancanganPh model.
 */
class RancanganPhController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all RancanganPh models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new RancanganPhSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single RancanganPh model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new RancanganPh model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new RancanganPh();

        if ($model->load(Yii::$app->request->post())) {
            date_default_timezone_set("Asia/Bangkok");
            if ($_POST['id_status_publish'] == 0 || $_POST['id_status_publish'] == '') {
                $model->id_status_publish = 1;
            } else {
                $model->id_status_publish = 2;
            }
            $file = UploadedFile::getInstance($model, 'file');

            $path = 'file/rancangan_produk_hukum/';
            FileHelper::createDirectory($path, $mode = 0775, $recursive = true);
            $pathFile = '';
            if (isset($file)) {
                $rand = rand();
                $file->saveAs($path . $rand . 'rancangan_produk_hukum' . '.' . $file->extension);
                $pathFile = $path . $rand . 'rancangan_produk_hukum' . '.' . $file->extension;
                $model->file = $pathFile;
            }
            if ($model->save()) {
                Yii::$app->session->setFlash('success', "Rancangan Produk Hukum Berhasil Disimpan");
                return $this->redirect(['index']);
            } else {
                Yii::$app->session->setFlash('danger', "Rancangan Produk Hukum Gagal Disimpan");
                return $this->redirect(['index']);
            }
        }

        return $this->render('create', [
                    'model' => $model,
        ]);
    }

    /**
     * Updates an existing RancanganPh model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
         $model = $this->findModel($id);
        $modelx = $this->findModel($id);
        if ($model->load(Yii::$app->request->post())) {
            date_default_timezone_set("Asia/Bangkok");
            if ($_POST['id_status_publish'] == 0 || $_POST['id_status_publish'] == '') {
                $model->id_status_publish = 1;
            } else {
                $model->id_status_publish = 2;
            }
            $file = UploadedFile::getInstance($model, 'file');
            if (!empty($file)) {
                $path = 'file/rancangan_produk_hukum/';
                FileHelper::createDirectory($path, $mode = 0775, $recursive = true);
                $pathFile = '';
                if (isset($file)) {
                    $rand = rand();
                    $file->saveAs($path . $rand . 'rancangan_produk_hukum' . '.' . $file->extension);
                    $pathFile = $path . $rand . 'rancangan_produk_hukum' . '.' . $file->extension;
                    $model->file = $pathFile;
                }
            } else {
                $model->file = $modelx->file;
            }
            if ($model->save()) {
                Yii::$app->session->setFlash('success', "Rancangan Produk Hukum Berhasil DiUpdate");
                return $this->redirect(['index']);
            } else {
                Yii::$app->session->setFlash('danger', "Rancangan Produk Hukum Gagal DiUpdate");
                return $this->redirect(['index']);
            }
        }

        return $this->render('update', [
                    'model' => $model,
        ]);
    }

    /**
     * Deletes an existing RancanganPh model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the RancanganPh model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return RancanganPh the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = RancanganPh::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
