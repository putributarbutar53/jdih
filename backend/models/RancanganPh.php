<?php

namespace backend\models;

use Yii;
use yii\behaviors\TimestampBehavior;
use yii\db\ActiveRecord;
use yii\db\Expression;

/**
 * This is the model class for table "{{%rancangan_ph}}".
 *
 * @property int $id
 * @property int $id_kategori
 * @property string $nomor
 * @property string $tahun
 * @property string $judul
 * @property string $isi
 * @property string $file
 * @property int $id_status_publish
 * @property string|null $created_at
 * @property string|null $updated_at
 * @property int|null $created_by
 * @property int|null $updated_by
 * @property int $active
 *
 * @property MasterKategori $kategori
 * @property MasterStatusPublish $statusPublish
 */
class RancanganPh extends \yii\db\ActiveRecord
 {

    public function behaviors() {
        return [
            'timestamp' => [
                'class' => TimestampBehavior::className(),
                'attributes' => [
                    ActiveRecord::EVENT_BEFORE_INSERT => ['created_at', 'updated_at'],
                    ActiveRecord::EVENT_BEFORE_UPDATE => 'updated_at',
                ],
                'value' => new Expression('NOW()'),
            ],
        ];
    }

    public function beforeSave($insert) {
        if (!parent::beforeSave($insert)) {
            return false;
        }
        if (!Yii::$app->user->isGuest) {
            $uid = Yii::$app->user->identity->id;
        } else {
            throw new \Exception("Who Are You?");
        }


        if (ActiveRecord::EVENT_BEFORE_INSERT) {
            $this->created_by = $uid;
            $this->updated_by = $uid;
        } else if (ActiveRecord::EVENT_BEFORE_UPDATE) {
            $this->updated_by = $uid;
        }

        return true;
    }

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%rancangan_ph}}';
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
            [['id_kategori', 'nomor', 'tahun', 'judul', 'isi', 'id_status_publish'], 'required'],
                [['id_kategori', 'id_status_publish', 'created_by', 'updated_by', 'active'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
                [['isi'], 'string'],
            [['nomor', 'judul', 'file', 'tahun'], 'string', 'max' => 255],
                [['id_kategori'], 'exist', 'skipOnError' => true, 'targetClass' => MasterKategori::className(), 'targetAttribute' => ['id_kategori' => 'id']],
            [['id_status_publish'], 'exist', 'skipOnError' => true, 'targetClass' => MasterStatusPublish::className(), 'targetAttribute' => ['id_status_publish' => 'id']],
            [['file'], 'file', 'skipOnEmpty' => true, 'extensions' => 'pdf,docx,jpeg,png,gif,jpg,doc,xls,xlsx',],
            [['file'], 'file', 'maxSize' => 100000 * 1024, 'tooBig' => 'Limit is 100MB'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'id_kategori' => 'Id Kategori',
            'nomor' => 'Nomor',
            'tahun' => 'Tahun',
            'judul' => 'Judul',
            'isi' => 'Isi',
            'file' => 'File',
            'id_status_publish' => 'Id Status Publish',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'active' => 'Active',
        ];
    }

    /**
     * Gets query for [[Kategori]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getKategori()
    {
        return $this->hasOne(MasterKategori::className(), ['id' => 'id_kategori']);
    }

    /**
     * Gets query for [[StatusPublish]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getStatusPublish()
    {
        return $this->hasOne(MasterStatusPublish::className(), ['id' => 'id_status_publish']);
    }
}
