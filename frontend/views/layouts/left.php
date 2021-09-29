<?php

use hscstudio\mimin\components\Mimin;

$username = Yii::$app->user->identity->username;
?>

<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?= $directoryAsset ?>/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p><?= $username ?></p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form>
        <!-- /.search form -->

        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
                'items' => [
                    ['label' => 'Dashboard', 'icon' => 'file-code-o', 'url' => ['/backend/site/index']],
                    [
                    'label' => 'Produk Hukum',
                    'icon' => 'share',
                    'url' => '#',
                    'visible' => Mimin::checkRoute('/backend/produk-hukum/*', true),
                    'items' => [
                            ['label' => 'Produk Hukum', 'icon' => 'file-code-o', 'url' => ['/backend/produk-hukum/index'],],
                            ['label' => 'Kategori', 'icon' => 'dashboard', 'url' => ['/backend/master-kategori/index'],],
                    ],
                ],
                    [
                    'label' => 'Rancangan Produk Hukum',
                    'icon' => 'share',
                    'url' => '#',
                    'visible' => Mimin::checkRoute('/backend/rancangan-ph/*', true),
                    'items' => [
                            ['label' => 'Rancangan Produk Hukum', 'icon' => 'file-code-o', 'url' => ['/backend/rancangan-ph/index'],],
                            ['label' => 'Kategori', 'icon' => 'dashboard', 'url' => ['/backend/master-kategori/index'],],
                    ],
                ],
                    [
                    'label' => 'Artikel',
                    'icon' => 'share',
                    'url' => '#',
                    'visible' => Mimin::checkRoute('/backend/artikel/*', true),
                    'items' => [
                            ['label' => 'Artikel', 'icon' => 'file-code-o', 'url' => ['/backend/artikel/index'],],
                            ['label' => 'Kategori', 'icon' => 'dashboard', 'url' => ['/backend/master-kategori-artikel/index'],],
                    ],
                ],
                    [
                    'label' => 'Profil',
                    'icon' => 'share',
                    'url' => '#',
                    'visible' => Mimin::checkRoute('/backend/master-profil/*', true),
                    'items' => [
                        ['label' => 'Profil', 'icon' => 'file-code-o', 'url' => ['/backend/master-profil/index'],],
                            ['label' => 'Struktur', 'icon' => 'dashboard', 'url' => ['/backend/master-struktur/index'],],
                            ['label' => 'Jabatan', 'icon' => 'dashboard', 'url' => ['/backend/master-jabatan/index'],],
                            ['label' => 'File Download', 'icon' => 'dashboard', 'url' => ['/backend/file-download/index'],],
                    ],
                ],
                [
                    'label' => 'Super Admin',
                    'icon' => 'share',
                    'url' => '#',
                    'visible' => Mimin::checkRoute('/mimin/*', true),
                    'items' => [
                            ['label' => 'Route', 'icon' => 'file-code-o', 'url' => ['/mimin/route']],
                            ['label' => 'Role', 'icon' => 'file-code-o', 'url' => ['/mimin/role']],
                            ['label' => 'User', 'icon' => 'file-code-o', 'url' => ['/mimin/user']],
                    ],
                ],
                    [
                    'label' => 'Menu Yii2',
                    'icon' => 'share',
                    'url' => '#',
                    'visible' => Mimin::checkRoute('/mimin/*', true),
                    'items' => [
                            ['label' => 'Gii', 'icon' => 'file-code-o', 'url' => ['/gii']],
                            ['label' => 'Debug', 'icon' => 'file-code-o', 'url' => ['/debug']],
                    ],
                ],
            ],
            ]
        ) ?>

    </section>

</aside>
