<?php

namespace frontend\controllers;

use Yii;
use frontend\models\ProdukHukum;
use frontend\models\search\ProdukHukumSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * ProdukHukumController implements the CRUD actions for ProdukHukum model.
 */
class ProdukHukumController extends Controller
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
     * Lists all ProdukHukum models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ProdukHukumSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single ProdukHukum model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id, $namaKategori) {
        $modelProdukHukum = \backend\models\ProdukHukum::find()
                ->where(['id_kategori' => $id])
                ->andWhere(['id_status_publish' => 2, 'active' => 10])
                ->one();
        $searchModel = new \backend\models\search\ProdukHukumSearch();
        $dataProvider = $searchModel->searchx(Yii::$app->request->queryParams, $id);
        return $this->render('view', [
            'model' => $modelProdukHukum,
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
     * Creates a new ProdukHukum model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new ProdukHukum();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    public function actionCariPh() {
        die();
    }

    /**
     * Updates an existing ProdukHukum model.
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
     * Deletes an existing ProdukHukum model.
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
     * Finds the ProdukHukum model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return ProdukHukum the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = ProdukHukum::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
