<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "{{%master_kategori}}".
 *
 * @property int $id
 * @property string $slug
 * @property string $nama
 * @property int $id_status
 * @property string|null $created_at
 * @property string|null $updated_at
 * @property int|null $created_by
 * @property int|null $updated_by
 * @property int $active
 *
 * @property MasterStatus $status
 * @property ProdukHukum[] $produkHukums
 * @property RancanganPh[] $rancanganPhs
 */
class MasterKategori extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%master_kategori}}';
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
            [['slug', 'nama', 'id_status'], 'required'],
            [['id_status', 'created_by', 'updated_by', 'active'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['slug', 'nama'], 'string', 'max' => 255],
            [['id_status'], 'exist', 'skipOnError' => true, 'targetClass' => MasterStatus::className(), 'targetAttribute' => ['id_status' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'slug' => 'Slug',
            'nama' => 'Nama',
            'id_status' => 'Id Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'active' => 'Active',
        ];
    }

    /**
     * Gets query for [[Status]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getStatus()
    {
        return $this->hasOne(MasterStatus::className(), ['id' => 'id_status']);
    }

    /**
     * Gets query for [[ProdukHukums]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProdukHukums()
    {
        return $this->hasMany(ProdukHukum::className(), ['id_kategori' => 'id']);
    }

    /**
     * Gets query for [[RancanganPhs]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getRancanganPhs()
    {
        return $this->hasMany(RancanganPh::className(), ['id_kategori' => 'id']);
    }
}
