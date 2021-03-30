<?php

use yii\db\Migration;

/**
 * Class m210330_152857_5_alter_table_yang_required
 */
class m210330_152857_5_alter_table_yang_required extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->alterColumn('jdih_artikel', 'thumbnail', $this->string());
        $this->alterColumn('jdih_artikel', 'file', $this->string());
        $this->alterColumn('jdih_artikel', 'judul', $this->text()->notNull());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m210330_152857_5_alter_table_yang_required cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m210330_152857_5_alter_table_yang_required cannot be reverted.\n";

        return false;
    }
    */
}
