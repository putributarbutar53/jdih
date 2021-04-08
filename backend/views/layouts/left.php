<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?= $directoryAsset ?>/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p>Alexander Pierce</p>

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
                    ['label' => 'Dashboard', 'icon' => 'file-code-o', 'url' => ['site/index']],
                    [
                    'label' => 'Produk Hukum',
                    'icon' => 'share',
                    'url' => '#',
                    'items' => [
                            ['label' => 'Produk Hukum', 'icon' => 'file-code-o', 'url' => ['produk-hukum/index'],],
                            ['label' => 'Kategori', 'icon' => 'dashboard', 'url' => ['master-kategori/index'],],
                    ],
                ],
                    [
                    'label' => 'Rancangan Produk Hukum',
                    'icon' => 'share',
                    'url' => '#',
                    'items' => [
                            ['label' => 'Rancangan Produk Hukum', 'icon' => 'file-code-o', 'url' => ['rancangan-ph/index'],],
                            ['label' => 'Kategori', 'icon' => 'dashboard', 'url' => ['master-kategori/index'],],
                    ],
                ],
                    [
                    'label' => 'Artikel',
                    'icon' => 'share',
                    'url' => '#',
                    'items' => [
                            ['label' => 'Artikel', 'icon' => 'file-code-o', 'url' => ['artikel/index'],],
                            ['label' => 'Kategori', 'icon' => 'dashboard', 'url' => ['master-kategori-artikel/index'],],
                    ],
                ],
                    [
                    'label' => 'Profil',
                    'icon' => 'share',
                    'url' => '#',
                    'items' => [
                        ['label' => 'Profil', 'icon' => 'file-code-o', 'url' => ['master-profil/index'],],
                        ['label' => 'Struktur', 'icon' => 'dashboard', 'url' => ['master-struktur/index'],],
                        ['label' => 'Jabatan', 'icon' => 'dashboard', 'url' => ['master-jabatan/index'],],
                    ],
                ],
                ['label' => 'Menu Yii2', 'options' => ['class' => 'header']],
                ['label' => 'Gii', 'icon' => 'file-code-o', 'url' => ['/gii']],
                    ['label' => 'Debug', 'icon' => 'dashboard', 'url' => ['/debug']],
                    ['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
                    [
                        'label' => 'Some tools',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Gii', 'icon' => 'file-code-o', 'url' => ['/gii'],],
                            ['label' => 'Debug', 'icon' => 'dashboard', 'url' => ['/debug'],],
                            [
                                'label' => 'Level One',
                                'icon' => 'circle-o',
                                'url' => '#',
                                'items' => [
                                    ['label' => 'Level Two', 'icon' => 'circle-o', 'url' => '#',],
                                    [
                                        'label' => 'Level Two',
                                        'icon' => 'circle-o',
                                        'url' => '#',
                                        'items' => [
                                            ['label' => 'Level Three', 'icon' => 'circle-o', 'url' => '#',],
                                            ['label' => 'Level Three', 'icon' => 'circle-o', 'url' => '#',],
                                        ],
                                    ],
                                ],
                            ],
                        ],
                    ],
                ],
            ]
        ) ?>

    </section>

</aside>
