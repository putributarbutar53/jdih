<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "{{%file_download}}".
 *
 * @property int $id
 * @property string $nama
 * @property string $file
 * @property int|null $jumlah_download
 * @property string|null $created_at
 * @property string|null $updated_at
 * @property int|null $created_by
 * @property int|null $updated_by
 * @property int $active
 */
class FileDownload extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%file_download}}';
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
            [['nama', 'file'], 'required'],
            [['jumlah_download', 'created_by', 'updated_by', 'active'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['nama', 'file'], 'string', 'max' => 255],
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
            'file' => 'File',
            'jumlah_download' => 'Jumlah Download',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'active' => 'Active',
        ];
    }
}
