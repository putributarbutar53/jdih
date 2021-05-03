<!--page-title-area start-->
<section class="page-title-area" style="background-image: url(govtpress/assets/img/bg/page-title-bg1.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 offset-xl-3">
                <div class="page-title text-center">
                    <h1>Struktur Organisasi</h1>
                    <div class="breadcrumb">
                        <ul class="breadcrumb-list">
                            <!--                            <li><a href="index-2.html">Home</a></li>
                                                        <li><a class="active" href="#">Team</a></li>-->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--page-title-area end-->
<!--counsilor-area start-->
<section class="counsilor-area-02 pt-40 pb-70">
    <div class="container">
        <div class="row">
            <?php
            $findStruktur = backend\models\MasterStruktur::find()
                    ->where(['active' => 10])
                    ->orderBy(['id_jabatan' => SORT_ASC])
                    ->all();
            foreach ($findStruktur as $fS) {
                echo '<div class="col-xl-3 col-lg-6 col-md-6">
                <div class="counsilors counsilors-02 counsilor-03 white-bg mb-30">
                    <div class="counsilors__img pos-rel mb-20">
                        <div class="counsilors__img--box">
                            <img src="' . $fS->foto . '" alt="">
                        </div>
                    </div>
                    <div class="counsilors__content">
                        <h5 class="semi-title mb-20">' . $fS->nama . '</h5>
                        <ul class="counsilors__content--list">
                            <li>' . $fS->jabatan->nama . '</li>
                        </ul>
                    </div>
                </div>
            </div>';
            }
            ?>            
        </div>
    </div>
</section>
<!--counsilor-area end-->