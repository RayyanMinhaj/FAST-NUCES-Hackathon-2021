<?php   require_once("config.php")?>
<?php include("header.php" )?>

<?php
$query=query("SELECT * FROM staff_members, Department where staff_members.faculty_id = 2 ");
confirm($query);

while($row=fetch_array($query)):
?>

<section class="section db p120">
    <br>
    <br>
    <br>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="tagline-message page-title text-center">
                            <h3 style="font-size: 60px"><?php echo $row['Name'];?></h3>
                            <ul class="breadcrumb">
                                <li><a href="faculty.php">CS Department</a></li>
                                <li class="active"><?php echo $row['Name']; ?> </li>
                            </ul>
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end section -->

        <section class="section gb nopadtop">
            <div class="container">
                <div class="boxed">
                    <div class="row">

                        <div class="sidebar col-md-4">
                            <div class="widget clearfix">
                                <div class="banner-widget">
                                    <img src="<?php echo $row['img_url']; ?>" width="10000" height="70" alt="" class="img-responsive img-rounded">
                                </div>
                            </div>

                            <div class="widget clearfix">
                                <h3 class="widget-title" align="center"><?php echo $row['Name']; ?></h3>
                                <p align="center"><?php echo $row['position']; ?></p>
                                <h4 align="center"><i> <?php echo $row['Department']; ?></i></h4>
                                    <p align="center">Room: <?php echo $row['Room']; ?> <br> Extension: <?php echo $row['Ext.']; ?> </p>

                            </div><!-- end widget -->


                        </div><!-- end sidebar -->
                        
                        <div class="col-md-8">
                            <div class="content blog-list">
                                <div class="blog-wrapper clearfix">
                                    <div class="blog-meta">
                                        <h3>Ab<i>out</i></h3>

                                    </div><!-- end blog-meta -->


                                    <div class="blog-desc-big">
                                        <p>Head of Department: <b><i>&emsp;&emsp;&emsp; <?php echo $row['Name']; ?></i></b></p>
                                        <br>
                                        <p>Designation: <b><i>&emsp;&emsp; <?php echo $row['position']; ?></i></b></p>
                                        <br>
                                        <p>Department: <b><i>&emsp;&emsp; <?php echo $row['Department']; ?></i></b></p>
                                        <br>
                                        <p>Email: <b><i>&emsp;&emsp;&emsp;&emsp;&emsp; <?php echo $row['email']; ?></i></b></p>
                                        <br>





                                    </div><!-- end desc -->
                                </div><!-- end blog -->


                                <div class="blog-wrapper clearfix">
                                    <div class="blog-meta">
                                        <h3>Message by<i>HOD</i></h3>

                                    </div><!-- end blog-meta -->


                                    <div class="blog-desc-big">
                                        <p>I welcome you all to the School of Computer Science & Engineering at FAST-NUCES karachi.</p>


                                    </div><!-- end desc -->
                                </div><!-- end blog -->
                            </div><!-- end content -->
                            <div class="blog-wrapper clearfix">
                                    <div class="blog-meta">
                                        <h3>Department<i>Secretary</i></h3>

                                    </div><!-- end blog-meta -->


                                    <div class="blog-desc-big">
                                        <p><?php echo $row['contact_info']; ?></p>


                                    </div><!-- end desc -->
                                </div><!-- end blog -->
                            </div><!-- end content -->
                        </div><!-- end col -->
                    </div><!-- end row -->
                </div><!-- end boxed -->
            </div><!-- end container -->
        </section>
        <?php endwhile; ?>


        <?php include("footer.php" )?>