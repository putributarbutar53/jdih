<?php

use yii\db\Migration;

/**
 * Class m210408_033620_7_alter_table_master_struktur
 */
class m210408_033620_7_alter_table_master_struktur extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('jdih_master_struktur', 'foto', $this->string()->after('id_jabatan'));
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m210408_033620_7_alter_table_master_struktur cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m210408_033620_7_alter_table_master_struktur cannot be reverted.\n";

        return false;
    }
    */
}
