<%-- 
    Document   : dashboard
    Created on : Apr 13, 2016, 11:50:30 PM
    Author     : Smeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id ="wrapper">
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
                    <a href="login.htm?action=loginpage" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>
                </div>
            </nav>

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
                            <a href="#"><i class="fa fa-desktop "></i>Tools <span class="fa arrow"></span></a>
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
                </div> 
            </nav>
            <div id="page-wrapper">

                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="page-head-line">DASHBOARD</h1>
                            <h1 class="page-subhead-line">This is dummy text , you can replace it with your original text. </h1>

                        </div>
                    </div>
                    <!-- /. ROW  -->
                    <div class="row">
                        <div class="col-md-4">
                            <div class="main-box mb-red">
                                <a href="upload.htm">
                                    <i class="fa fa-bolt fa-5x"></i>
                                    <h5>Upload Assignments Below: </h5>
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
                    </div>

                    <div id="success"></div>
                    <spring:form commandName="userUpload" onsubmit="return myFunction();" method="POST" enctype="multipart/form-data">
                        File Name : <spring:input path="fileName" id="fileName" type="text"/>


                        ID : <spring:input path="id" id="id" value="${sessionScope.customerId}" type="text"/>


                        Select File (Max Size: 5MB): <spring:input path="file" type="file"/>

                        <input type="Upload Assignment" name="Register User">

                    </spring:form>
                       
                        
                        <hr />

                        <div class="panel panel-default">

                            <div id="carousel-example" class="carousel slide" data-ride="carousel" style="border: 5px solid #000;">

                                <div class="carousel-inner">
                                    <div class="item active">

                                        <img src="assets/img/slideshow/1.jpg" alt="" />

                                    </div>
                                    <div class="item">
                                        <img src="assets/img/slideshow/2.jpg" alt="" />

                                    </div>
                                    <div class="item">
                                        <img src="assets/img/slideshow/3.jpg" alt="" />

                                    </div>
                                </div>
                                <!--INDICATORS-->
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example" data-slide-to="1"></li>
                                    <li data-target="#carousel-example" data-slide-to="2"></li>
                                </ol>
                                <!--PREVIUS-NEXT BUTTONS-->
                                <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>
                            </div>
                        </div>
                        
                </div>
                </body>
                </html>
