<?php   require_once("config.php")?>
<?php include("header.php" )?>

<br>
    <br>

            <section class="section db p120" style="background-image: url('images/calendar.jpg'); background-repeat: no-repeat; background-color: #0f0f0f;
  background-attachment: fixed;
  background-size: 100% 120%; background-position-x: revert;>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="tagline-message page-title text-center">
                            <h1 style="color: #204d74;font-size: 75px"  >EXAMINATION <i>Schedule</i></h1>
                            <ul class="breadcrumb">
                                <li><a href="index.php">Home</a></li>
                                <li class="active">Examination Schedule</li>
                            </ul>
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end section -->

        <section class="section gb nopadtop" >
            <div class="container">
                <div class="boxed boxedp4">

                    <h1>Revised Admission <i>Schedule: </i></h1>
                    <h4 style= align:right; padding-right: 35px><i>Updated on: 18-Aug-2020</i></h4>

                    <br>

                    <table class="table table-hover"  style= border: 1%; border-style: ridge >
                        <thead style="color: white; background-color: #01bacf">
                        <tr style="font-size: 20px">

                            <th scope="col"><b>Admission Schedule 2020</b></th>

                            <th scope="col"><i>BBA, BS(A&F) & BS</i></th>
                            <th scope="col"><i>MBA, MS & PhD </i></th>

                        </tr>

                        </thead>




                        <tbody>

                        <?php get_schedule(); ?>


                    </table>

                    <p><i>* DATE MAY CHANGE AS PER GOVT. OF PAK INSTRUCTIONS</i></p>
                    <br>
                    <br>
                    <br>
                    <h4>NOTE:<i> Admission Schedule may change due to COVID-19 situation in country.</i></h4>
                </div><!-- end container -->
            </div>





        </section>
        <?php include("footer.php" )?>
