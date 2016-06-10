<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>

        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- BOOTSTRAP STYLES-->



        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME STYLES-->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!--CUSTOM BASIC STYLES-->
        <link href="assets/css/basic.css" rel="stylesheet" />
        <!--CUSTOM MAIN STYLES-->
        <link href="assets/css/custom.css" rel="stylesheet" />
        <!-- GOOGLE FONTS-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />


        <style>

            .file-upload-wrapper {
                position: relative;
                width: 100%;
                height: auto;
            }
            .file-upload-wrapper:after {
                content: attr(data-text);
                font-size: 16px;
                position: absolute;
                top: 0;
                left: 0;
                background: #fff;
                padding: 10px 15px;
                display: block;
                width: calc(100% - 40px);
                pointer-events: none;
                z-index: 20;
                height: 60px;
                line-height: 50px;
                color: #999;
                border-radius: 5px 10px 10px 5px;
                font-weight: 300;
            }
            .file-upload-wrapper:before {
                content: 'Upload';
                position: absolute;
                top: 0;
                right: 0;
                display: inline-block;
                height: 60px;
                background: #4daf7c;
                color: #fff;
                font-weight: 700;
                z-index: 25;
                font-size: 16px;
                line-height: 50px;
                padding: 0 15px;
                text-transform: uppercase;
                pointer-events: none;
                border-radius: 0 5px 5px 0;
            }
            .file-upload-wrapper:hover:before {
                background: #3d8c63;
            }
            .file-upload-wrapper input {
                opacity: 0;
                position: absolute;
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                z-index: 99;
                height: 60px;
                margin: 0;
                padding: 0;
                display: block;
                cursor: pointer;
                width: 100%;
            }

            .file-upload-header
            {
                font-weight: bold;
                font-size:xx-large;
                margin-top: 10px;
                margin-bottom: 20px;
            }
            
            .file-upload-field{
                height: 60px;
            }
            
            #reviews
            {
                background-color: #b87569;
            }
            
        </style>

    </head>


    <body>
        <div id="wrapper">
            <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">Northeastern University</a>
                </div>

                <div class="header-right">

                    <a href="message-task.html" class="btn btn-info" title="New Message"><b>30 </b><i class="fa fa-envelope-o fa-2x"></i></a>
                    <a href="message-task.html" class="btn btn-primary" title="New Task"><b>40 </b><i class="fa fa-bars fa-2x"></i></a>
                    <a href="login.htm?action=loginpage" class="btn btn-sm btn-danger" title="Logout"><img src="assets/img/Export-64.png" width="50px" height="30px"/></a>
                </div>
            </nav>
            <!-- /. NAV TOP  -->
            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li>
                            <div class="user-img-div">
                                <img src="assets/img/user.jpg" class="img-thumbnail" />

                                <div class="inner-text">
                                    Dev Khimasia
                                    <br />
                                    <small>Last Login : 2 Weeks Ago </small>
                                </div>
                            </div>

                        </li>


                        <li>
                            <a class="active-menu" href="index.html"><i class="fa fa-dashboard "></i>Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-desktop active"></i>Links <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="panel-tabs.html"><i class="fa fa-toggle-on"></i>Announcements</a>
                                </li>
                                <li>
                                    <a href="notification.html"><i class="fa fa-bell "></i>Notifications</a>
                                </li>
                                <li>
                                    <a href="progress.html"><i class="fa fa-circle-o "></i>My Grades</a>
                                </li>
                                <li>
                                    <a href="buttons.html"><i class="fa fa-code "></i>Lynda</a>
                                </li>
                                <li>
                                    <a href="icons.html"><i class="fa fa-bug "></i>myNEU Portal</a>
                                </li>
                            </ul>
                        </li>




                    </ul>

                </div>

            </nav>
            <!-- /. NAV SIDE  -->
            <div id="page-wrapper">
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="page-head-line">Welcome to BlackBoard</h1>
                            <h1 class="page-subhead-line">We recommend logging into Blackboard directly using the address http://blackboard.neu.edu.  Bookmark the address in your browser so you will always have direct access to Blackboard. </h1>

                        </div>
                    </div>
                    <!-- /. ROW  -->
                <!--    <div class="row">
                        <div class="col-md-4">
                            <div class="main-box mb-red">
                                <a href="upload.htm">
                                    <i class="fa fa-bolt fa-5x"></i>
                                    <h5>Upload Assignment</h5>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="main-box mb-dull">
                                <a href="#">
                                    <i class="fa fa-plug fa-5x"></i>
                                    <h5>40 Task In Check</h5>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="main-box mb-pink">
                                <a href="#">
                                    <i class="fa fa-dollar fa-5x"></i>
                                    <h5>200K Pending</h5>
                                </a>
                            </div>
                        </div>

                    </div>-->
                    <!-- /. ROW  -->

                    <div class="row">
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-12">



                                </div>


                            </div>


                            <!-- /. ROW  -->
                            <hr />
                            <div id ="reviews">
                                    <div class="file-upload-header">
                                        Upload Assignment here:
                                    </div>   
                                <form class="form">
                                    <div class="file-upload-wrapper" data-text="Select your file!">
                                        <input name="file-upload-field" type="file" class="file-upload-field" value="">
                                    </div>

                            </div>
                            
                            <hr/>

                            <div class="panel panel-default">

                                <div id="carousel-example" class="carousel slide" data-ride="carousel" style="border: 5px solid #000;">

                                    <div class="carousel-inner">
                                        <div class="item active">

                                            <img src="assets/img/cloud.jpeg" alt="" />

                                        </div>
                                        <div class="item">
                                            <img src="assets/img/cloud_1.jpeg" alt="" />

                                        </div>
                                        <div class="item">
                                            <img src="assets/img/cloud_2.jpeg" alt="" />

                                        </div>
                                        <div class="item">
                                            <img src="assets/img/neu.jpg" alt="" />

                                        </div>
                                        
                                    </div>
                                    <!--INDICATORS-->
                                    <ol class="carousel-indicators">
                                        <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                                        <li data-target="#carousel-example" data-slide-to="1"></li>
                                        <li data-target="#carousel-example" data-slide-to="2"></li>
                                         <li data-target="#carousel-example" data-slide-to="3"></li>
                                    </ol>
                                    <!--PREVIOUS-NEXT BUTTONS-->
                                    <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                    </a>
                                    <a class="right carousel-control" href="#carousel-example" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- /.REVIEWS &  SLIDESHOW  -->
                        <div class="col-md-4">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Student Information
                                </div>
                                <div class="panel-body" style="padding: 0px;">
                                    <div class="chat-widget-main">


                                        <div class="chat-widget-left">
                                            To meet demand, we've added additional dates for Data Analysis and Visualization and Speeding up Matlab Applications. 
                                            Please note that all April 5th seminars are a repeat of the sessions MathWorks is running on March 31st. 
                                            If you registered for March 31st, plan to attend on that date.  All workshops have been moved to 130 Churchill Hall.
                                            <a href="http://www.mathworks.com/company/events/?requestedDomain=www.mathworks.com">Click Here for more Information</a>
                                        </div>
                                        <div class="chat-widget-name-left">

                                        </div>
                                        <div class="chat-widget-right">
                                            Getting Started with JMP:  Discover the statistical and graphical capabilities of JMP in this free introductory workshop.  Registration is limited. 
                                            <a href="http://www.ats.neu.edu/sas-jmp/">Click Here</a> for more information and to reserve your seat.
                                        </div>
                                        <div class="chat-widget-name-right">

                                        </div>
                                        <div class="chat-widget-left">
                                            Students: Where are my courses?
                                            Instructors control the availability of courses. 
                                            If your course is not shown in Blackboard, please contact your instructor.
                                            Time for Course Evaluation?
                                            <a href="https://j.mp/neu-trace-login">Click here for Trace</a>
                                        </div>
                                        <div class="chat-widget-name-left">

                                        </div>

                                    </div>
                                </div>

                            </div>


                        </div>
                        <!--/.Chat Panel End-->
                    </div>
                    <!-- /. ROW  -->


                    <div class="row">

                        <div class="col-md-8">
                            <div class="list-group">
                                <a href="#" class="list-group-item active">
                                    <h4 class="list-group-item-heading">Small Video describing our College: </h4>
                                    <p class="list-group-item-text" style="line-height: 30px;">
                                        Northeastern University is a private research university in Boston, Massachusetts, established in 1898. 
                                        It is categorized as R1 by the Carnegie Classification of Institutions of Higher Education.
                                    </p>
                                </a>
                            </div>
                            <br />
                            <!-- 16:9 aspect ratio -->
                            <div class="embed-responsive embed-responsive-16by9">
                                <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/Sv--TXd-xTU" frameborder="0" allowfullscreen></iframe>
                            </div>

                        </div>
                        <div class="col-md-4">
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                    <i class="fa fa-bell fa-fw"></i>Notifications Panel
                                </div>

                                <div class="panel-body">
                                    <div class="list-group">

                                        <a href="#" class="list-group-item">
                                            <i class="fa fa-twitter fa-fw"></i>Assignments
                                            <span class="pull-right text-muted small"><em>12 minutes ago</em>
                                            </span>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <i class="fa fa-envelope fa-fw"></i>Due date
                                            <span class="pull-right text-muted small"><em>04/21/2016</em>
                                            </span>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <i class="fa fa-tasks fa-fw"></i>Course Material
                                            <span class="pull-right text-muted small"><em>43 minutes ago</em>
                                            </span>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <i class="fa fa-upload fa-fw"></i>Discussion Board
                                            <span class="pull-right text-muted small"><em>11:32 AM</em>
                                            </span>
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <i class="fa fa-bolt fa-fw"></i>Gradebook
                                            <span class="pull-right text-muted small"><em>11:13 AM</em>
                                            </span>
                                        </a>





                                    </div>
                                    <!-- /.list-group -->
                                    <a href="#" class="btn btn-info btn-block">View All </a>
                                </div>

                            </div>
                        </div>
                    </div>

                    <!--/.Row-->
                    <hr />
                    <div class="row">

                        <div class="col-md-8">

                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Username</th>
                                            <th>User No.</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td><span class="label label-danger">Mark</span></td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                            <td><span class="label label-info">100090</span></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                            <td>100090</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td><span class="label label-danger">the Bird</span> </td>
                                            <td>@twitter</td>
                                            <td>100090</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td><span class="label label-success">Mark</span></td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                            <td><span class="label label-info">100090</span></td>
                                        </tr>

                                        <tr>
                                            <td>5</td>
                                            <td>Larry</td>
                                            <td><span class="label label-primary">the Bird</span></td>
                                            <td>@twitter</td>
                                            <td>100090</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td><span class="label label-warning">Jacob</span></td>
                                            <td><span class="label label-success">Thornton</span></td>
                                            <td>@fat</td>
                                            <td><span class="label label-danger">100090</span></td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>Larry</td>
                                            <td><span class="label label-primary">the Bird</span></td>
                                            <td>@twitter</td>
                                            <td>100090</td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td><span class="label label-warning">Jacob</span></td>
                                            <td><span class="label label-success">Thornton</span></td>
                                            <td>@fat</td>
                                            <td><span class="label label-danger">100090</span></td>
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td><span class="label label-success">Mark</span></td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                            <td><span class="label label-info">100090</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>




                        </div>
                        <div class="col-md-4">
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                    Recent Comments Example
                                </div>
                                <div class="panel-body">
                                    <ul class="media-list">

                                        <li class="media">

                                            <div class="media-body">

                                                <div class="media">
                                                    <a class="pull-left" href="#">
                                                        <img class="media-object img-circle img-comments" src="assets/img/user.png" />
                                                    </a>
                                                    <div class="media-body">
                                                        <h4 class="media-heading">Nulla gravida vitae  </h4>
                                                        Donec sit amet ligula enim. Duis vel condimentum massa.

                                                        <!-- Nested media object -->
                                                        <div class="media">
                                                            <a class="pull-left" href="#">
                                                                <img class="media-object img-circle img-comments" src="assets/img/user.gif" />
                                                            </a>
                                                            <div class="media-body">
                                                                <h4 class="media-heading">Amet ligula enim</h4>
                                                                Donec sit amet ligula enim .
                                                            </div>
                                                        </div>
                                                        <div class="media">
                                                            <a class="pull-left" href="#">
                                                                <img class="media-object img-circle img-comments" src="assets/img/user.png" />
                                                            </a>
                                                            <div class="media-body">
                                                                <h4 class="media-heading">Donec t ligula enim</h4>
                                                                Donec sit amet  amet ligula enim . 
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/.Row-->
                    <hr />
                    <div class="row" style="padding-bottom: 100px; ">
                        <div class="col-md-6">
                            <div id="comments-sec">
                                <h4><strong>Compose Support Ticket </strong></h4>
                                <hr />


                                <div class="form-group  ">
                                    <label>Please Write a Subject Line</label>
                                    <input type="text" class="form-control" required="required" placeholder="Enter Subject Of Ticket" />
                                </div>
                                <div class="form-group ">
                                    <label>Please Enter Issue</label>
                                    <textarea class="form-control" rows="8"></textarea>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success">Compose &amp; Send Ticket</button>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-6">
                            <div class="panel panel-back noti-box">
                                <span class="icon-box bg-color-black">
                                    <i class="fa fa-bicycle"></i>
                                </span>
                                <div class="text-box">
                                    <p class="main-text">52 Important Issues to Fix </p>
                                    <p>Please fix these issues to work smooth</p>
                                    <p>Time Left: 30 mins</p>
                                    <hr />
                                    <p>
                                        <span class=" color-bottom-txt"><i class="fa fa-edit"></i>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit gthn. 
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit gthn. 
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit gthn.

                                        </span>


                                    </p>
                                    <hr />
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit gthn. 
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit gthn.
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/.ROW-->

                </div>
                <!-- /. PAGE INNER  -->
            </div>
            <!-- /. PAGE WRAPPER  -->
        </div>
        <!-- /. WRAPPER  -->

        <div id="footer-sec">
            &copy; 2014 YourCompany | Design By : <a href="http://www.binarytheme.com/" target="_blank">BinaryTheme.com</a>
        </div>
        <!-- /. FOOTER  -->
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
        <script src="assets/js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="assets/js/bootstrap.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="assets/js/jquery.metisMenu.js"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="assets/js/custom.js"></script>



    </body>
</html>
