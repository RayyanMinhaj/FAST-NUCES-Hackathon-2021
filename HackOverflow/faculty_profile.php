<?php   require_once("config.php")?>
<?php include("header.php" )?>

<?php
$query=query("SELECT * FROM staff_members where faculty_id = " .escape_string($_GET['id']). " ");
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
                                <li><a href="faculty.php">Faculty</a></li>
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
                                        <p>Full Name: <b><i>&emsp;&emsp;&emsp; <?php echo $row['Name']; ?></i></b></p>
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
                                        <h3>Intro<i>duction</i></h3>

                                    </div><!-- end blog-meta -->


                                    <div class="blog-desc-big">
                                        <p>Dr Muhammad Atif Tahir received his PhD from School of Computer Science & Engineering at Queens University, Belfast, UK, MSc in Computer Engineering from King Fahd University, Dhahran, KSA, and BE in Computer Systems Engineering from NED University of Engg, and Tech., Karachi, Pakistan. He is also academic fellow of UK higher education. He is currently working as Professor in School of Computer Science, FAST University, Karachi Campus, Pakistan. Before joining FAST, he was working as Senior Lecturer at Northumbria University, United Kingdom.</p>


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