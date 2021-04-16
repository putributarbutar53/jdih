<?php

use yii\db\Migration;

/**
 * Class m210330_082107_3_alter_table_produk_hukum
 */
class m210330_082107_3_alter_table_produk_hukum extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->alterColumn('jdih_produk_hukum', 'judul', $this->text()->notNull());
        $this->alterColumn('jdih_rancangan_ph', 'judul', $this->text()->notNull());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m210330_082107_3_alter_table_produk_hukum cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m210330_082107_3_alter_table_produk_hukum cannot be reverted.\n";

        return false;
    }
    */
}
