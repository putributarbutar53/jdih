<?php

use yii\db\Migration;

/**
 * Class m210507_082956_8_alter_table_produk_hukum_rancangan
 */
class m210507_082956_8_alter_table_produk_hukum_rancangan extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->alterColumn('jdih_produk_hukum', 'tahun', $this->date()->notNull());
        $this->alterColumn('jdih_rancangan_ph', 'tahun', $this->date()->notNull());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m210507_082956_8_alter_table_produk_hukum_rancangan cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m210507_082956_8_alter_table_produk_hukum_rancangan cannot be reverted.\n";

        return false;
    }
    */
}
