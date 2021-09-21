<?php

use yii\db\Migration;

/**
 * Class m210921_030818_9_create_table_file_download
 */
class m210921_030818_9_create_table_file_download extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{jdih_file_download}}', [
            'id' => $this->primaryKey(),
            'nama' => $this->string()->notNull(),
            'file' => $this->string()->notNull(),
            'jumlah_download' => $this->integer()->defaultValue(0),
            'created_at' => $this->datetime(),
            'updated_at' => $this->datetime(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
            'active' => $this->integer()->notNull()->defaultValue(10), //
                ], $tableOptions);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m210921_030818_9_create_table_file_download cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m210921_030818_9_create_table_file_download cannot be reverted.\n";

        return false;
    }
    */
}
