<?php

namespace frontend\models\backend\search;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\ProdukHukum;

/**
 * ProdukHukumSearch represents the model behind the search form of `backend\models\ProdukHukum`.
 */
class ProdukHukumSearch extends ProdukHukum
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'id_kategori', 'id_status_publish', 'created_by', 'updated_by', 'active'], 'integer'],
            [['nomor', 'tahun', 'judul', 'isi', 'file', 'created_at', 'updated_at'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = ProdukHukum::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'id_kategori' => $this->id_kategori,
            'tahun' => $this->tahun,
            'id_status_publish' => $this->id_status_publish,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'created_by' => $this->created_by,
            'updated_by' => $this->updated_by,
            'active' => $this->active,
        ]);

        $query->andFilterWhere(['like', 'nomor', $this->nomor])
            ->andFilterWhere(['like', 'judul', $this->judul])
            ->andFilterWhere(['like', 'isi', $this->isi])
            ->andFilterWhere(['like', 'file', $this->file]);
        //                ->andFilterWhere(['like', 'tahun', $this->tahun]);

        return $dataProvider;
    }

    public function searchx($params, $id) {
        $query = ProdukHukum::find()
                ->where(['id_status_publish' => 2])
                ->andWhere(['id_kategori' => $id]);



        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'id_kategori' => $this->id_kategori,
            'tahun' => $this->tahun,
            'id_status_publish' => $this->id_status_publish,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'created_by' => $this->created_by,
            'updated_by' => $this->updated_by,
            'active' => $this->active,
        ]);

        $query->andFilterWhere(['like', 'nomor', $this->nomor])
                ->andFilterWhere(['like', 'judul', $this->judul])
                ->andFilterWhere(['like', 'isi', $this->isi])
                ->andFilterWhere(['like', 'file', $this->file]);
        //                ->andFilterWhere(['like', 'tahun', $this->tahun]);

        return $dataProvider;
    }

}
