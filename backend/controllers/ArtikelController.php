<?php

namespace backend\controllers;

use Yii;
use backend\models\Artikel;
use backend\models\search\ArtikelSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use yii\helpers\FileHelper;

/**
 * ArtikelController implements the CRUD actions for Artikel model.
 */
class ArtikelController extends Controller
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
     * Lists all Artikel models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ArtikelSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Artikel model.
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
     * Creates a new Artikel model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Artikel();

        if ($model->load(Yii::$app->request->post())) {
            $model->slug = (string) rand();
            if ($_POST['id_status_publish'] == 0 || $_POST['id_status_publish'] == '') {
                $model->id_status_publish = 1;
            } else {
                $model->id_status_publish = 2;
            }
            $thumbnail = UploadedFile::getInstance($model, 'thumbnail');
            if (!empty($thumbnail)) {
                $path = Yii::getAlias('@frontend') . '/web/file/artikel/thumbnail/';
                $pathDatabase = '/file/artikel/thumbnail/';
                FileHelper::createDirectory($path, $mode = 0775, $recursive = true);
                $pathFile = '';
                if (isset($thumbnail)) {
                    $rand = rand();
                    $thumbnail->saveAs($path . $rand . '_thumbnail' . '.' . $thumbnail->extension);
                    $pathFile = $pathDatabase . $rand . '_thumbnail' . '.' . $thumbnail->extension;
                    $model->thumbnail = $pathFile;
                }
            }
            $file = UploadedFile::getInstance($model, 'file');
            if (!empty($file)) {
                $path = Yii::getAlias('@frontend') . '/web/file/artikel/file/';
                $pathDatabase = '/file/artikel/file/';
                FileHelper::createDirectory($path, $mode = 0775, $recursive = true);
                $pathFile = '';
                if (isset($file)) {
                    $rand = rand();
                    $file->saveAs($path . $rand . '_artikel' . '.' . $file->extension);
                    $pathFile = $pathDatabase . $rand . '_artikel' . '.' . $file->extension;
                    $model->file = $pathFile;
                }
            }
            if ($model->save()) {
                Yii::$app->session->setFlash('success', "Artikel Berhasil Di Simpan");
                return $this->redirect(['index']);
            } else {
                Yii::$app->session->setFlash('danger', "Artikel Gagal Di Simpan");
                return $this->redirect(['index']);
            }
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Artikel model.
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
            $model->slug = (string) rand();
            if ($_POST['id_status_publish'] == 0 || $_POST['id_status_publish'] == '') {
                $model->id_status_publish = 1;
            } else {
                $model->id_status_publish = 2;
            }
            $thumbnail = UploadedFile::getInstance($model, 'thumbnail');
            if (!empty($thumbnail)) {
                $path = Yii::getAlias('@frontend') . '/web/file/artikel/thumbnail/';
                $pathDatabase = '/file/artikel/thumbnail/';
                FileHelper::createDirectory($path, $mode = 0775, $recursive = true);
                $pathFile = '';
                if (isset($thumbnail)) {
                    $rand = rand();
                    $thumbnail->saveAs($path . $rand . '_thumbnail' . '.' . $thumbnail->extension);
                    $pathFile = $pathDatabase . $rand . '_thumbnail' . '.' . $thumbnail->extension;
                    $model->thumbnail = $pathFile;
                }
            } else {
                $model->thumbnail = $modelx->thumbnail;
            }
            $file = UploadedFile::getInstance($model, 'file');
            if (!empty($file)) {
                $path = Yii::getAlias('@frontend') . '/web/file/artikel/file/';
                $pathDatabase = '/file/artikel/file/';
                FileHelper::createDirectory($path, $mode = 0775, $recursive = true);
                $pathFile = '';
                if (isset($file)) {
                    $rand = rand();
                    $file->saveAs($path . $rand . '_artikel' . '.' . $file->extension);
                    $pathFile = $pathDatabase . $rand . '_artikel' . '.' . $file->extension;
                    $model->file = $pathFile;
                }
            } else {
                $model->file = $modelx->file;
            }
            if ($model->save()) {
                Yii::$app->session->setFlash('success', "Artikel Berhasil Di Update");
                return $this->redirect(['index']);
            } else {
                Yii::$app->session->setFlash('danger', "Artikel Gagal Di Update");
                return $this->redirect(['index']);
            }
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Artikel model.
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
     * Finds the Artikel model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Artikel the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Artikel::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
