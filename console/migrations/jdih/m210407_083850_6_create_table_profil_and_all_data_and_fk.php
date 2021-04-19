<?php

use yii\db\Migration;

/**
 * Class m210407_083850_6_create_table_profil_and_all_data_and_fk
 */
class m210407_083850_6_create_table_profil_and_all_data_and_fk extends Migration
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
        $this->createTable('{{jdih_master_profil}}', [
            'id' => $this->primaryKey(),
            'visi' => $this->text()->notNull(),
            'misi' => $this->text()->notNull(),
            'sejarah' => $this->text()->notNull(),
            'created_at' => $this->datetime(),
            'updated_at' => $this->datetime(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
            'active' => $this->integer()->notNull()->defaultValue(10), //
                ], $tableOptions);
        $this->createTable('{{jdih_master_struktur}}', [
            'id' => $this->primaryKey(),
            'nip' => $this->string()->notNull(),
            'nama' => $this->string()->notNull(),
            'id_jabatan' => $this->integer()->notNull(),
            'created_at' => $this->datetime(),
            'updated_at' => $this->datetime(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
            'active' => $this->integer()->notNull()->defaultValue(10), //
                ], $tableOptions);
        $this->createTable('{{jdih_master_jabatan}}', [
            'id' => $this->primaryKey(),
            'nama' => $this->string()->notNull(),
            'created_at' => $this->datetime(),
            'updated_at' => $this->datetime(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
            'active' => $this->integer()->notNull()->defaultValue(10), //
                ], $tableOptions);

        $this->addForeignKey(
                'fk-jdihMS-idJabatan', 'jdih_master_struktur', 'id_jabatan', 'jdih_master_jabatan', 'id', 'CASCADE'
        );
    }

   

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m210407_083850_6_create_table_profil_and_all_data_and_fk cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m210407_083850_6_create_table_profil_and_all_data_and_fk cannot be reverted.\n";

        return false;
    }
    */
}
