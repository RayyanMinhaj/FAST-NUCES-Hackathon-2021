<?php   require_once("config.php")?>
<?php include("header.php" )?>

<section class="section db p120" style="background-image: url('images/events.jpg');background-size: 100% 150%; background-position-x: revert;">
<br>
<br>
            <br>
            <br>
            <br>

            <div class="container" >
                <div class="row">
                    <div class="col-md-12">
                        <div class="tagline-message page-title text-center">
                            <h3 style="font-size: 75px; color: white">Our <i>Events</i></h3>
                            <ul class="breadcrumb">
                                <li style="color: white"><a href="index.php" >FAST-NUCES</a></li>
                                <li class="active" style="color: white">Campus Life</li>
                                <li class="active" style="color: white">Events</li>
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
                                    <img src="" alt="" class="img-responsive img-rounded">
                                </div>
                            </div>

                            <div class="widget clearfix">
                                <h3 class="widget-title">Popular Events</h3>
                                <div class="post-widget">
                                    <?php get_subevents(); ?>
                                </div><!-- end post-widget -->
                            </div><!-- end widget -->

                            <div class="widget clearfix">
                                <h3 class="widget-title">Subscribe Our Newsletter</h3>
                                <div class="newsletter-widget">
                                    <p>You can opt out of our newsletters at any time. See our <a href="#">privacy policy</a>.</p>
                                    <form class="form-inline" role="search">
                                        <div class="form-1">
                                            <input type="text" class="form-control" placeholder="Enter email here..">
                                            <button type="submit" class="btn btn-primary"><i class="fa fa-paper-plane-o"></i></button>
                                        </div>
                                    </form>
                                </div><!-- end newsletter -->
                            </div><!-- end widget -->

                            <div class="widget clearfix">
                                <h3 class="widget-title">Popular Tags</h3>
                                <div class="tags-widget">   
                                    <ul class="list-inline">
                                        <li><a href="#">course</a></li>
                                        <li><a href="#">web design</a></li>
                                        <li><a href="#">development</a></li>
                                        <li><a href="#">language</a></li>
                                        <li><a href="#">teacher</a></li>
                                        <li><a href="#">speaking</a></li>
                                        <li><a href="#">material</a></li>
                                        <li><a href="#">css3</a></li>
                                        <li><a href="#">html</a></li>
                                        <li><a href="#">learning</a></li>
                                    </ul>
                                </div><!-- end list-widget -->
                            </div><!-- end widget -->
                        </div><!-- end sidebar -->
                        <div class="col-md-8">
                            <?php get_mainevents(); ?>
                        </div>   
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="pagination">
                                        <li class="disabled"><a href="javascript:void(0)">&laquo;</a></li>
                                        <li class="active"><a href="javascript:void(0)">1</a></li>
                                        <li><a href="javascript:void(0)">2</a></li>
                                        <li><a href="javascript:void(0)">3</a></li>
                                        <li><a href="javascript:void(0)">...</a></li>
                                        <li><a href="javascript:void(0)">&raquo;</a></li>
                                    </ul>
                                </div><!-- end col -->
                            </div><!-- end row -->
                        </div><!-- end col -->
                    </div><!-- end row -->
                </div><!-- end boxed -->
            </div><!-- end container -->
        </section>

        <?php include("footer.php" )?>
