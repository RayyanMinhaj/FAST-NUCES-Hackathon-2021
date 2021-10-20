<?php


//helper functions

function last_id(){
    global $connection;
     return mysqli_insert_id($connection);
}

function set_message($msg){
    if(!empty($msg)){
        $_SESSION['message']=$msg;
    }else{
        $msg="";
    }
}

function display_message(){
    if(isset( $_SESSION['message'])){
        echo  $_SESSION['message'];
        unset( $_SESSION['message']);
    }
}

function redirect($location){
    header("Location: $location ");
}

function query($sql){
    global $connection;
    return mysqli_query($connection, $sql);
}

function confirm($result)
{
    global $connection;
    if(!$result){
        die("QUERY FAILED" . mysqli_error($connection));
    }
}

function escape_string($string){
    global $connection;
    return mysqli_real_escape_string($connection, $string);
}

function fetch_array($result){
    return mysqli_fetch_array($result);
}

function get_faculty(){
    $query=query("SELECT * FROM staff_members");
    confirm($query);

    while($row=fetch_array($query)){
    $faculty= <<<DELIMETER
        <div class="col-md-4">
            <div class="course-box">
                <div class="image-wrap entry">
                    <img src="{$row['img_url']}" alt="" class="img-responsive" width=100 height=100> 
                </div><!-- end image-wrap -->
                    <div class="course-details">
                        <h4>
                            <small>Computer Science</small>
                                <a href=faculty_profile.php?id={$row['faculty_id']}>{$row['Name']}</a>
                            </h4>
                        <p>{$row['position']}</p>
                    </div><!-- end details -->
                <div class="course-footer clearfix">

                </div><!-- end footer -->
            </div><!-- end box -->
        </div><!-- end col -->
DELIMETER;
echo $faculty;
    }
}

function get_schedule(){
    $query=query("SELECT * FROM admission_schedule");
    confirm($query);

    while($row=fetch_array($query)){
    $dates= <<<DELIMETER
    
    <tr style="color: #0f0f0f">
    <th>{$row['date_name']}</th>
    <td>{$row['BS_date']}</td>
    <td>{$row['MS_date']}</td>
    </tr>
DELIMETER;
    echo $dates;
    }
}
function get_meritlist(){
    $query=query("SELECT * FROM deans_list");
    confirm($query);

    while($row=fetch_array($query)){
    $merit= <<<DELIMETER
    
    <tr style="color: #0f0f0f">
    <th>{$row['Name']}</th>
    <td>{$row['Id']}</td>
    <td>{$row['Batch No.']}</td>
    <td>{$row['Department']}</td>
    </tr>
DELIMETER;
    echo $merit;
    }
}

function get_mainevents(){
    $query=query("SELECT * FROM events");
    confirm($query);

    while($row=fetch_array($query)){
    $main_event= <<<DELIMETER
                            <div class="content blog-list">
                                <div class="blog-wrapper clearfix">
                                    <div class="blog-meta">
                                        <small><a href="#">Recent Event</a></small>
                                        <h3>{$row['event_name']}</h3>
                                        <ul class="list-inline">
                                            <li>{$row['event_date']}</li>
                                            <li><span>hosted by</span> <a href="#">{$row['event_by']}</a></li>
                                        </ul>
                                    </div><!-- end blog-meta -->

                                    <div class="blog-media">
                                        <a href="blog-single.php" title=""><img src="{$row['img_url']}" alt="" class="img-responsive img-rounded"></a>
                                    </div><!-- end media -->

                                    <div class="blog-desc-big">
                                        <p>{$row['event_caption']}</p>
                                        <a href="https://www.facebook.com/DevelopersDay" class="btn btn-primary">Read More</a>
                                    </div><!-- end desc -->
                                </div><!-- end blog -->
                            </div><!-- end content -->

DELIMETER;
    echo $main_event;
    }              
}
function get_subevents(){
    $query=query("SELECT * FROM sub_events");
    confirm($query);

    while($row=fetch_array($query)){
    $main_event= <<<DELIMETER
        <div class="media">
            <img src="{$row['img_url']}" alt="" class="img-responsive alignleft img-rounded" width= 100 height=100>
                <div class="media-body">
                    <h5 class="mt-0">{$row['event_name']}</h5>
                        <div class="blog-meta">
                            <ul class="list-inline">
                                <li>{$row['event_date']}</li>
                                <li><span>by</span> <a href="#">{$row['event_date']}</a></li>
                            </ul>
                        </div><!-- end blog-meta -->
                </div>
        </div>
DELIMETER;
    echo $main_event;
    }              
}
function get_societies(){
    $query=query("SELECT * FROM societies");
    confirm($query);

    while($row=fetch_array($query)){
        $main_society= <<<DELIMETER
        <div class="caro-item">
        <div class="course-box">
            <div class="image-wrap entry">
                <img src="{$row['img_url']}" alt="" class="img-responsive">
            </div><!-- end image-wrap -->
            <div class="course-details">
                <h4>
                    <small></small>
                    <a href="">{$row['society_name']}</a>
                </h4>

            </div><!-- end details -->
            <div class="course-footer clearfix">
            </div><!-- end footer -->
        </div><!-- end box -->
    </div><!-- end col -->
DELIMETER;
    echo $main_society;
    }              
}
?>