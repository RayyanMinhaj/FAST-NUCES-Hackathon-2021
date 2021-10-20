<?php   require_once("config.php")?>
<?php include("header.php" )?>
        <section class="section db p120" style="background-color: black ; background-image: url('images/societies.jpg');
  background-size: 100% 160%; background-position-x: revert;">

            <div class="container">
                <br>
                <br>

                <div class="row">
                    <div class="col-md-12">
                        <div class="tagline-message page-title text-center" >
                            <h1 style="color: white;font-size: 75px"  >Student<i> Societies </i></h1>
                            <h2 STYLE="color: white"><i>at FAST-NUCES</i></h2>
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end section -->

        <section class="section gb">




            <div class="container">
                
                <div id="owl-01" class="owl-carousel owl-theme owl-theme-01">
                    <?php get_societies(); ?>

                    <div class="course-footer clearfix">
                        <div class="pull-left; text-left">

                        </div>


                        <div class="pull-right; text-right">

                        </div>



                    </div><!-- end footer -->




                </div><!-- end row -->

                <hr class="invis">

                <div class="section-button text-center">
                    <!-- <a href="offered-programs.php" class="btn btn-primary">View All Courses</a> -->
                </div>
            </div><!-- end container -->
        </section>








       
        <?php include("footer.php" )?>