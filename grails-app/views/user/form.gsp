<%--
  Created by IntelliJ IDEA.
  User: kiran
  Date: 8/21/15
  Time: 11:34 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<!-- saved from url=(0054)http://webapplayers.com/inspinia_admin-v2.2/index.html -->
<html>
<head>

    <meta name="layout" content="main"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Social Media Listerning</title>

    <style type="text/css">.jqstooltip {
        position: absolute;left: 0px;top: 0px;
        visibility: hidden;background: rgb(0, 0, 0) transparent;
        background-color: rgba(0,0,0,0.6);
        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);
        -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
        color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;
        padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial,
    san serif;text-align: left;}
    </style>

</head>

<body class="pace-done"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="-webkit-transform: translate3d(100%, 0px, 0px); transform: translate3d(100%, 0px, 0px);">
    <div class="pace-progress-inner"></div>
</div>
    <div class="pace-activity"></div></div>
<div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                    </span>
                    </div>
                    <div class="logo-element">
                    </div>
                </li>
                <li>
                    <g:link controller="Dashboard" action="summary"><span class="nav-label">Dashboard</span></g:link>
                </li>
                <li>
                    <g:link controller="Graph" action="statistics"><span class="nav-label">Graphs</span></g:link>
                </li>

                <li  class="active">
                    <g:link controller="User" action="create"><span class="nav-label">Create User</span></g:link>
                </li>


            </ul>

        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg dashbard-1" style="min-height: 635px;">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href=""><i class="fa fa-bars"></i> </a>
                    <form role="search" class="navbar-form-custom" action="">
                        <div class="form-group">
                            <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                        </div>
                    </form>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <span class="m-r-sm text-muted welcome-message">Welcome to Social Media Listening</span>
                    </li>
                    <li class="dropdown">
                        <ul class="dropdown-menu dropdown-messages">
                            <li>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="dropdown-messages-box">
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="dropdown-messages-box">
                                </div>
                            </li>
                        </ul>
                    <li>
                        <g:link controller="User" action="login">
                            <i class="fa fa-sign-out"></i> Log out
                        </g:link>
                    </li>
                </ul>

            </nav>
        </div>

        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>Basic Form</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="">Home</a>
                    </li>
                    <li class="active">
                        <strong>Create User</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-7">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Fill Following Form</h5>
                        </div>
                        <div class="ibox-content">
                            <div class="row">
                                <div class="col-lg-6">
                                    <g:form controller="user" action="create">
                                        <div class="form-group"><label>First Name</label>
                                            <g:textField type="text" name= "firstName" placeholder="Enter First Name" class="form-control"/>
                                        </div>
                                        <div class="form-group"><label>Last Name</label>
                                            <g:textField type="text" name="lastName" placeholder="Password" class="form-control"/>
                                        </div>
                                        <div class="form-group"><label>User Name</label>
                                            <g:textField type="text" name="username" placeholder="Enter User Name" class="form-control"/>
                                        </div>
                                        <div class="form-group"><label>Password</label>
                                            <g:textField type="password" name="password" placeholder="Password" class="form-control"/>
                                        </div>
                                        <div>
                                            <g:actionSubmit class="btn btn-sm btn-primary pull-right m-t-n-xs" value="Create User" />
                                        </div>
                                    </g:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="wrapper wrapper-content">
                    <div class="row">
                    </div>
                </div>
                <div class="footer">
                    <div class="pull-right">
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</div>
</body></html>