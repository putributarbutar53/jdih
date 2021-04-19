<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "{{%master_status}}".
 *
 * @property int $id
 * @property string $nama
 * @property string|null $created_at
 * @property string|null $updated_at
 * @property int|null $created_by
 * @property int|null $updated_by
 * @property int $active
 *
 * @property MasterKategori[] $masterKategoris
 * @property MasterKategoriArtikel[] $masterKategoriArtikels
 */
class MasterStatus extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%master_status}}';
    }

    /**
     * @return \yii\db\Connection the database connection used by this AR class.
     */
    public static function getDb()
    {
        return Yii::$app->get('db_jdih');
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama'], 'required'],
            [['created_at', 'updated_at'], 'safe'],
            [['created_by', 'updated_by', 'active'], 'integer'],
            [['nama'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nama' => 'Nama',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'active' => 'Active',
        ];
    }

    /**
     * Gets query for [[MasterKategoris]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getMasterKategoris()
    {
        return $this->hasMany(MasterKategori::className(), ['id_status' => 'id']);
    }

    /**
     * Gets query for [[MasterKategoriArtikels]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getMasterKategoriArtikels()
    {
        return $this->hasMany(MasterKategoriArtikel::className(), ['id_status' => 'id']);
    }
}
