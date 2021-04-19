<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
?>
<!--page-title-area start-->
<section class="page-title-area" style="background-image: url(govtpress/assets/img/bg/page-title-bg1.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 offset-xl-3">
                <div class="page-title text-center">
                    <h1>Sejarah</h1>
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
<!--team-biography-area start-->
<section class="team-biography-area pb-30">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="biographs">
                    <h3 class="biographs-title">Sejarah</h3>
                    <div class="biographs__content">
                        <span><?= $model->sejarah ?></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--team-biography-area end-->