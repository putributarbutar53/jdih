<?php

use yii\db\Migration;

/**
 * Class m210329_094413_1_create_all_table_and_all_fk_and_all_data
 */
class m210329_094413_1_create_all_table_and_all_fk_and_all_data extends Migration
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

        $this->createTable('{{jdih_master_status}}', [
            'id' => $this->primaryKey(),
            'nama' => $this->string()->notNull(),
            'created_at' => $this->datetime(),
            'updated_at' => $this->datetime(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
            'active' => $this->integer()->notNull()->defaultValue(10), //
                ], $tableOptions);
        $this->createTable('{{jdih_master_status_publish}}', [
            'id' => $this->primaryKey(),
            'nama' => $this->string()->notNull(),
            'created_at' => $this->datetime(),
            'updated_at' => $this->datetime(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
            'active' => $this->integer()->notNull()->defaultValue(10), //
                ], $tableOptions);
        $this->createTable('{{jdih_master_kategori}}', [
            'id' => $this->primaryKey(),
            'slug' => $this->string()->notNull(),
            'nama' => $this->string()->notNull(),
            'id_status' => $this->integer()->notNull(),
            'created_at' => $this->datetime(),
            'updated_at' => $this->datetime(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
            'active' => $this->integer()->notNull()->defaultValue(10), //
                ], $tableOptions);
        $this->createTable('{{jdih_master_kategori_artikel}}', [
            'id' => $this->primaryKey(),
            'slug' => $this->string()->notNull(),
            'nama' => $this->string()->notNull(),
            'id_status' => $this->integer()->notNull(),
            'created_at' => $this->datetime(),
            'updated_at' => $this->datetime(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
            'active' => $this->integer()->notNull()->defaultValue(10), //
                ], $tableOptions);
        $this->createTable('{{jdih_produk_hukum}}', [
            'id' => $this->primaryKey(),
            'id_kategori' => $this->integer()->notNull(),
            'nomor' => $this->string()->notNull(),
            'tahun' => $this->dateTime()->notNull(),
            'judul' => $this->string()->notNull(),
            'isi' => $this->text()->notNull(),
            'file' => $this->string()->notNull(),
            'id_status_publish' => $this->integer()->notNull(),
            'created_at' => $this->datetime(),
            'updated_at' => $this->datetime(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
            'active' => $this->integer()->notNull()->defaultValue(10), //
                ], $tableOptions);
        $this->createTable('{{jdih_rancangan_ph}}', [
            'id' => $this->primaryKey(),
            'id_kategori' => $this->integer()->notNull(),
            'nomor' => $this->string()->notNull(),
            'tahun' => $this->dateTime()->notNull(),
            'judul' => $this->string()->notNull(),
            'isi' => $this->text()->notNull(),
            'file' => $this->string()->notNull(),
            'id_status_publish' => $this->integer()->notNull(),
            'created_at' => $this->datetime(),
            'updated_at' => $this->datetime(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
            'active' => $this->integer()->notNull()->defaultValue(10), //
                ], $tableOptions);
        $this->createTable('{{jdih_artikel}}', [
            'id' => $this->primaryKey(),
            'judul' => $this->string()->notNull(),
            'slug' => $this->string()->notNull(),
            'id_kategori_artikel' => $this->integer()->notNull(),
            'isi' => $this->text()->notNull(),
            'thumbnail' => $this->string()->notNull(),
            'file' => $this->string()->notNull(),
            'id_status_publish' => $this->integer()->notNull(),
            'created_at' => $this->datetime(),
            'updated_at' => $this->datetime(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
            'active' => $this->integer()->notNull()->defaultValue(10), //
                ], $tableOptions);

        $this->addForeignKey(
                'fk-jdihMk-idStatus', 'jdih_master_kategori', 'id_status', 'jdih_master_status', 'id', 'CASCADE'
        );
        $this->addForeignKey(
                'fk-jdihMKA-idStatus', 'jdih_master_kategori_artikel', 'id_status', 'jdih_master_status', 'id', 'CASCADE'
        );
        $this->addForeignKey(
                'fk-jdihPH-idKategori', 'jdih_produk_hukum', 'id_kategori', 'jdih_master_kategori', 'id', 'CASCADE'
        );
        $this->addForeignKey(
                'fk-jdihPH-idSttsPublish', 'jdih_produk_hukum', 'id_status_publish', 'jdih_master_status_publish', 'id', 'CASCADE'
        );
        $this->addForeignKey(
                'fk-jdihRPH-idKategori', 'jdih_rancangan_ph', 'id_kategori', 'jdih_master_kategori', 'id', 'CASCADE'
        );
        $this->addForeignKey(
                'fk-jdihRPH-idSttsPublish', 'jdih_rancangan_ph', 'id_status_publish', 'jdih_master_status_publish', 'id', 'CASCADE'
        );
        $this->addForeignKey(
                'fk-jdihArt-idKatArt', 'jdih_artikel', 'id_kategori_artikel', 'jdih_master_kategori_artikel', 'id', 'CASCADE'
        );
        $this->addForeignKey(
                'fk-jdihArt-idSttsPublish', 'jdih_artikel', 'id_status_publish', 'jdih_master_status_publish', 'id', 'CASCADE'
        );

        $this->insert('jdih_master_status', ['nama' => 'Draft']);
        $this->insert('jdih_master_status', ['nama' => 'Aktif']);
        $this->insert('jdih_master_status_publish', ['nama' => 'Draft']);
        $this->insert('jdih_master_status_publish', ['nama' => 'Publish']);
        $this->insert('jdih_master_kategori', ['slug' => 'nasional', 'nama' => 'Produk Hukum Nasional', 'id_status' => '1']);
        $this->insert('jdih_master_kategori', ['slug' => 'daerah', 'nama' => 'Produk Hukum Daerah', 'id_status' => '1']);
        $this->insert('jdih_master_kategori', ['slug' => 'undang-undang', 'nama' => 'Undang Undang', 'id_status' => '2']);
        $this->insert('jdih_master_kategori', ['slug' => 'PP', 'nama' => 'Peraturan Pemerintah', 'id_status' => '2']);
        $this->insert('jdih_master_kategori', ['slug' => 'PerPres', 'nama' => 'Peraturan Presiden', 'id_status' => '2']);
        $this->insert('jdih_master_kategori', ['slug' => 'KePres', 'nama' => 'Keputusan Presiden', 'id_status' => '2']);
        $this->insert('jdih_master_kategori', ['slug' => 'InPres', 'nama' => 'Instruksi Presiden', 'id_status' => '2']);
        $this->insert('jdih_master_kategori', ['slug' => 'PERDA', 'nama' => 'Peraturan Daerah', 'id_status' => '2']);
        $this->insert('jdih_master_kategori', ['slug' => 'PERBUP', 'nama' => 'Peraturan Bupati', 'id_status' => '2']);
        $this->insert('jdih_master_kategori', ['slug' => 'KEPBUP', 'nama' => 'Keputusan Bupati', 'id_status' => '2']);
        $this->insert('jdih_master_kategori_artikel', ['slug' => 'news', 'nama' => 'News', 'id_status' => '2']);
        $this->insert('jdih_master_kategori_artikel', ['slug' => 'kegiatan', 'nama' => 'Kegiatan', 'id_status' => '2']);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m210329_094413_1_create_all_table_and_all_fk_and_all_data cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m210329_094413_1_create_all_table_and_all_fk_and_all_data cannot be reverted.\n";

        return false;
    }
    */
}
