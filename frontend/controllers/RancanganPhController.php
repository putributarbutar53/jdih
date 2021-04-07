<?php

namespace frontend\controllers;

use Yii;
use frontend\models\RancanganPh;
use frontend\models\search\RancanganPhSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * RancanganPhController implements the CRUD actions for RancanganPh model.
 */
class RancanganPhController extends Controller
 {

    public $layout = 'main-frontend_2';

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
    public function actionViewBak($id) {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    public function actionView($id, $namaKategori) {
        $modelRancanganPh = \backend\models\RancanganPh::find()
                ->where(['id_kategori' => $id])
                ->andWhere(['id_status_publish' => 2, 'active' => 10])
                ->one();
        $searchModel = new \backend\models\search\RancanganPhSearch();
        $dataProvider = $searchModel->searchx(Yii::$app->request->queryParams, $id);
        return $this->render('view', [
                    'model' => $modelRancanganPh,
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
                    'namaKategori' => $namaKategori,
        ]);
    }

    public function actionDetailProdukHukum($id) {
        $modelProdukHukum = \backend\models\ProdukHukum::findOne($id);
        return $this->render('view-detail', [
                    'model' => $modelProdukHukum,
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

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
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

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
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
