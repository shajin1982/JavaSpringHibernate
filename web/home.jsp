<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/29
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>jsp</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/pe-icon-7-filled.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <link href="assets/weather/css/weather-icons.css" rel="stylesheet"/>
    <link href="assets/calendar/fullcalendar.css" rel="stylesheet"/>
    <link href="assets/css/charts/chartist.min.css" rel="stylesheet">
    <link href="assets/css/lib/vector-map/jqvmap.min.css" rel="stylesheet">
    <style>
        #weatherWidget .currentDesc {
            color: #ffffff !important;
        }

        .traffic-chart {
            min-height: 335px;
        }

        #flotPie1 {
            height: 150px;
        }

        #flotPie1 td {
            padding: 3px;
        }

        #flotPie1 table {
            top: 20px !important;
            right: -10px !important;
        }

        .chart-container {
            display: table;
            min-width: 270px;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        #flotLine5 {
            height: 105px;
        }

        #flotBarChart {
            height: 150px;
        }

        #cellPaiChart {
            height: 160px;
        }

    </style>
</head>
<body>
<!-- Left Panel -->
<aside id="left-panel" class="left-panel">
    <nav class="navbar navbar-expand-sm navbar-default">
        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="index.html"><i class="menu-icon fa fa-laptop"></i>首页</a>
                </li>
                <li class="menu-title">业务模块</li><!-- /.menu-title -->
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false"> <i class="menu-icon fa fa-cogs"></i>部门及投资公司应用</a>
                    <ul class="sub-menu children dropdown-menu">
                        <li><i class="fa fa-puzzle-piece"></i><a href="ui-buttons.html">人力行政管理中心</a></li>
                        <li><i class="fa fa-id-badge"></i><a href="ui-badges.html">物流管理中心</a></li>
                        <li><i class="fa fa-bars"></i><a href="ui-tabs.html">安全环境管理中心</a></li>
                        <li><i class="fa fa-id-card-o"></i><a href="ui-cards.html">财务管理中心</a></li>
                        <li><i class="fa fa-exclamation-triangle"></i><a href="ui-alerts.html">内部审核管理中心</a></li>
                        <li><i class="fa fa-spinner"></i><a href="ui-progressbar.html">信息发展管理中心</a></li>
                        <li><i class="fa fa-fire"></i><a href="ui-modals.html">业务部门</a></li>
                        <li><i class="fa fa-book"></i><a href="ui-switches.html">通常千红</a></li>
                        <li><i class="fa fa-th"></i><a href="ui-grids.html">连云港千红</a></li>
                        <li><i class="fa fa-file-word-o"></i><a href="ui-typgraphy.html">天津千红</a></li>
                    </ul>
                </li>
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false"> <i class="menu-icon fa fa-table"></i>看板信息</a>
                    <ul class="sub-menu children dropdown-menu">
                        <li><i class="fa fa-table"></i><a href="tables-basic.html">泛微OA看板信息</a></li>
                        <li><i class="fa fa-table"></i><a href="tables-data.html">U9看板信息</a></li>
                    </ul>
                </li>
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false"> <i class="menu-icon fa fa-th"></i>报表信息</a>
                    <ul class="sub-menu children dropdown-menu">
                        <li><i class="menu-icon fa fa-th"></i><a href="forms-basic.html">U9报表</a></li>
                        <li><i class="menu-icon fa fa-th"></i><a href="forms-advanced.html">待开发</a></li>
                    </ul>
                </li>

                <!-- <li class="menu-title">Icons</li>&lt;!&ndash; /.menu-title &ndash;&gt;-->

                <!--                <li class="menu-item-has-children dropdown">-->
                <!--                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"-->
                <!--                       aria-expanded="false"> <i class="menu-icon fa fa-tasks"></i>Icons</a>-->
                <!--                    <ul class="sub-menu children dropdown-menu">-->
                <!--                        <li><i class="menu-icon fa fa-fort-awesome"></i><a href="font-fontawesome.html">Font Awesome</a>-->
                <!--                        </li>-->
                <!--                        <li><i class="menu-icon ti-themify-logo"></i><a href="font-themify.html">Themefy Icons</a></li>-->
                <!--                    </ul>-->
                <!--                </li>-->
                <!--                <li>-->
                <!--                    <a href="widgets.html"> <i class="menu-icon ti-email"></i>Widgets </a>-->
                <!--                </li>-->
                <!--                <li class="menu-item-has-children dropdown">-->
                <!--                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"-->
                <!--                       aria-expanded="false"> <i class="menu-icon fa fa-bar-chart"></i>Charts</a>-->
                <!--                    <ul class="sub-menu children dropdown-menu">-->
                <!--                        <li><i class="menu-icon fa fa-line-chart"></i><a href="charts-chartjs.html">Chart JS</a></li>-->
                <!--                        <li><i class="menu-icon fa fa-area-chart"></i><a href="charts-flot.html">Flot Chart</a></li>-->
                <!--                        <li><i class="menu-icon fa fa-pie-chart"></i><a href="charts-peity.html">Peity Chart</a></li>-->
                <!--                    </ul>-->
                <!--                </li>-->
                <!--                <li class="menu-item-has-children dropdown">-->
                <!--                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"-->
                <!--                       aria-expanded="false"> <i class="menu-icon fa fa-area-chart"></i>Maps</a>-->
                <!--                    <ul class="sub-menu children dropdown-menu">-->
                <!--                        <li><i class="menu-icon fa fa-map-o"></i><a href="maps-gmap.html">Google Maps</a></li>-->
                <!--                        <li><i class="menu-icon fa fa-street-view"></i><a href="maps-vector.html">Vector Maps</a></li>-->
                <!--                    </ul>-->
                <!--                </li>-->
                <!--                <li class="menu-title">Extras</li>&lt;!&ndash; /.menu-title &ndash;&gt;-->
                <!--                <li class="menu-item-has-children dropdown">-->
                <!--                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"-->
                <!--                       aria-expanded="false"> <i class="menu-icon fa fa-glass"></i>Pages</a>-->
                <!--                    <ul class="sub-menu children dropdown-menu">-->
                <!--                        <li><i class="menu-icon fa fa-sign-in"></i><a href="page-login.html">Login</a></li>-->
                <!--                        <li><i class="menu-icon fa fa-sign-in"></i><a href="page-register.html">Register</a></li>-->
                <!--                        <li><i class="menu-icon fa fa-paper-plane"></i><a href="pages-forget.html">Forget Pass</a></li>-->
                <!--                    </ul>-->
                <!--                </li>-->
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
</aside>
<!-- /#left-panel -->
<!-- Right Panel -->
<div id="right-panel" class="right-panel">
    <!-- Header-->
    <header id="header" class="header">
        <div class="top-left">
            <div class="navbar-header">
                <a class="navbar-brand" href="./"><img src="images/logo1.png" alt="Logo"></a>
                <a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"></a>
                <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
            </div>
        </div>
        <!--页面头部右边-->
        <div class="top-right">
            <div class="header-menu">
                <!--放大镜-->
                <!--                <div class="header-left">-->
                <!--                    <button class="search-trigger"><i class="fa fa-search"></i></button>-->
                <!--                    <div class="form-inline">-->
                <!--                        <form class="search-form">-->
                <!--                            <input class="form-control mr-sm-2" type="text" placeholder="Search ..."-->
                <!--                                   aria-label="Search">-->
                <!--                            <button class="search-close" type="submit"><i class="fa fa-close"></i></button>-->
                <!--                        </form>-->
                <!--                    </div>-->
                <!--&lt;!&ndash;                    &lt;!&ndash;铃铛标签&ndash;&gt;&ndash;&gt;-->
                <!--&lt;!&ndash;                    <div class="dropdown for-notification">&ndash;&gt;-->
                <!--&lt;!&ndash;                        <button class="btn btn-secondary dropdown-toggle" type="button" id="notification"&ndash;&gt;-->
                <!--&lt;!&ndash;                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">&ndash;&gt;-->
                <!--&lt;!&ndash;                            <i class="fa fa-bell"></i>&ndash;&gt;-->
                <!--&lt;!&ndash;                            <span class="count bg-danger">3</span>&ndash;&gt;-->
                <!--&lt;!&ndash;                        </button>&ndash;&gt;-->
                <!--&lt;!&ndash;                        <div class="dropdown-menu" aria-labelledby="notification">&ndash;&gt;-->
                <!--&lt;!&ndash;                            <p class="red">You have 3 Notification</p>&ndash;&gt;-->
                <!--&lt;!&ndash;                            <a class="dropdown-item media" href="#">&ndash;&gt;-->
                <!--&lt;!&ndash;                                <i class="fa fa-check"></i>&ndash;&gt;-->
                <!--&lt;!&ndash;                                <p>Server #1 overloaded.</p>&ndash;&gt;-->
                <!--&lt;!&ndash;                            </a>&ndash;&gt;-->
                <!--&lt;!&ndash;                            <a class="dropdown-item media" href="#">&ndash;&gt;-->
                <!--&lt;!&ndash;                                <i class="fa fa-info"></i>&ndash;&gt;-->
                <!--&lt;!&ndash;                                <p>Server #2 overloaded.</p>&ndash;&gt;-->
                <!--&lt;!&ndash;                            </a>&ndash;&gt;-->
                <!--&lt;!&ndash;                            <a class="dropdown-item media" href="#">&ndash;&gt;-->
                <!--&lt;!&ndash;                                <i class="fa fa-warning"></i>&ndash;&gt;-->
                <!--&lt;!&ndash;                                <p>Server #3 overloaded.</p>&ndash;&gt;-->
                <!--&lt;!&ndash;                            </a>&ndash;&gt;-->
                <!--&lt;!&ndash;                        </div>&ndash;&gt;-->
                <!--&lt;!&ndash;                    </div>&ndash;&gt;-->
                <!--&lt;!&ndash;                    &lt;!&ndash;信息标签&ndash;&gt;&ndash;&gt;-->
                <!--&lt;!&ndash;                    <div class="dropdown for-message">&ndash;&gt;-->
                <!--&lt;!&ndash;                        <button class="btn btn-secondary dropdown-toggle" type="button" id="message"&ndash;&gt;-->
                <!--&lt;!&ndash;                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">&ndash;&gt;-->
                <!--&lt;!&ndash;                            <i class="fa fa-envelope"></i>&ndash;&gt;-->
                <!--&lt;!&ndash;                            <span class="count bg-primary">4</span>&ndash;&gt;-->
                <!--&lt;!&ndash;                        </button>&ndash;&gt;-->
                <!--&lt;!&ndash;                        <div class="dropdown-menu" aria-labelledby="message">&ndash;&gt;-->
                <!--&lt;!&ndash;                            <p class="red">You have 4 Mails</p>&ndash;&gt;-->
                <!--&lt;!&ndash;                            <a class="dropdown-item media" href="#">&ndash;&gt;-->
                <!--&lt;!&ndash;                                <span class="photo media-left"><img alt="avatar" src="images/avatar/1.jpg"></span>&ndash;&gt;-->
                <!--&lt;!&ndash;                                <div class="message media-body">&ndash;&gt;-->
                <!--&lt;!&ndash;                                    <span class="name float-left">Jonathan Smith</span>&ndash;&gt;-->
                <!--&lt;!&ndash;                                    <span class="time float-right">Just now</span>&ndash;&gt;-->
                <!--&lt;!&ndash;                                    <p>Hello, this is an example msg</p>&ndash;&gt;-->
                <!--&lt;!&ndash;                                </div>&ndash;&gt;-->
                <!--&lt;!&ndash;                            </a>&ndash;&gt;-->
                <!--&lt;!&ndash;                            <a class="dropdown-item media" href="#">&ndash;&gt;-->
                <!--&lt;!&ndash;                                <span class="photo media-left"><img alt="avatar" src="images/avatar/2.jpg"></span>&ndash;&gt;-->
                <!--&lt;!&ndash;                                <div class="message media-body">&ndash;&gt;-->
                <!--&lt;!&ndash;                                    <span class="name float-left">Jack Sanders</span>&ndash;&gt;-->
                <!--&lt;!&ndash;                                    <span class="time float-right">5 minutes ago</span>&ndash;&gt;-->
                <!--&lt;!&ndash;                                    <p>Lorem ipsum dolor sit amet, consectetur</p>&ndash;&gt;-->
                <!--&lt;!&ndash;                                </div>&ndash;&gt;-->
                <!--&lt;!&ndash;                            </a>&ndash;&gt;-->
                <!--&lt;!&ndash;                            <a class="dropdown-item media" href="#">&ndash;&gt;-->
                <!--&lt;!&ndash;                                <span class="photo media-left"><img alt="avatar" src="images/avatar/3.jpg"></span>&ndash;&gt;-->
                <!--&lt;!&ndash;                                <div class="message media-body">&ndash;&gt;-->
                <!--&lt;!&ndash;                                    <span class="name float-left">Cheryl Wheeler</span>&ndash;&gt;-->
                <!--&lt;!&ndash;                                    <span class="time float-right">10 minutes ago</span>&ndash;&gt;-->
                <!--&lt;!&ndash;                                    <p>Hello, this is an example msg</p>&ndash;&gt;-->
                <!--&lt;!&ndash;                                </div>&ndash;&gt;-->
                <!--&lt;!&ndash;                            </a>&ndash;&gt;-->
                <!--&lt;!&ndash;                            <a class="dropdown-item media" href="#">&ndash;&gt;-->
                <!--&lt;!&ndash;                                <span class="photo media-left"><img alt="avatar" src="images/avatar/4.jpg"></span>&ndash;&gt;-->
                <!--&lt;!&ndash;                                <div class="message media-body">&ndash;&gt;-->
                <!--&lt;!&ndash;                                    <span class="name float-left">Rachel Santos</span>&ndash;&gt;-->
                <!--&lt;!&ndash;                                    <span class="time float-right">15 minutes ago</span>&ndash;&gt;-->
                <!--&lt;!&ndash;                                    <p>Lorem ipsum dolor sit amet, consectetur</p>&ndash;&gt;-->
                <!--&lt;!&ndash;                                </div>&ndash;&gt;-->
                <!--&lt;!&ndash;                            </a>&ndash;&gt;-->
                <!--&lt;!&ndash;                        </div>&ndash;&gt;-->
                <!--&lt;!&ndash;                    </div>&ndash;&gt;-->
                <!--                </div>-->

                <div class="user-area dropdown float-right">
                    <a href="#" >
                        <img class="user-avatar rounded-circle" src="${WXUser.avatar}" alt="User Avatar">
                    </a>
                    <!--头标下拉-->
                    <!--                    <div class="user-menu dropdown-menu">-->
                    <!--                        <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>-->

                    <!--                        <a class="nav-link" href="#"><i class="fa fa- user"></i>Notifications <span-->
                    <!--                                class="count">13</span></a>-->

                    <!--                        <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>-->

                    <!--                        <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Logout</a>-->
                    <!--                    </div>-->
                </div>
            </div>
        </div>
    </header>
    <!-- /#header -->
    <!-- 中间部分 -->
    <div class="content">
        <!-- Animated -->
        <div class="animated fadeIn">
            <!-- Widgets  -->
            <!--            <div class="row">-->
            <!--                <div class="col-lg-3 col-md-6">-->
            <!--                    <div class="card">-->
            <!--                        <div class="card-body">-->
            <!--                            <div class="stat-widget-five">-->
            <!--                                <div class="stat-icon dib flat-color-1">-->
            <!--                                    <i class="pe-7s-cash"></i>-->
            <!--                                </div>-->
            <!--                                <div class="stat-content">-->
            <!--                                    <div class="text-left dib">-->
            <!--                                        <div class="stat-text">$<span class="count">23569</span></div>-->
            <!--                                        <div class="stat-heading">Revenue</div>-->
            <!--                                    </div>-->
            <!--                                </div>-->
            <!--                            </div>-->
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                </div>-->

            <!--                <div class="col-lg-3 col-md-6">-->
            <!--                    <div class="card">-->
            <!--                        <div class="card-body">-->
            <!--                            <div class="stat-widget-five">-->
            <!--                                <div class="stat-icon dib flat-color-2">-->
            <!--                                    <i class="pe-7s-cart"></i>-->
            <!--                                </div>-->
            <!--                                <div class="stat-content">-->
            <!--                                    <div class="text-left dib">-->
            <!--                                        <div class="stat-text"><span class="count">3435</span></div>-->
            <!--                                        <div class="stat-heading">Sales</div>-->
            <!--                                    </div>-->
            <!--                                </div>-->
            <!--                            </div>-->
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                </div>-->

            <!--                <div class="col-lg-3 col-md-6">-->
            <!--                    <div class="card">-->
            <!--                        <div class="card-body">-->
            <!--                            <div class="stat-widget-five">-->
            <!--                                <div class="stat-icon dib flat-color-3">-->
            <!--                                    <i class="pe-7s-browser"></i>-->
            <!--                                </div>-->
            <!--                                <div class="stat-content">-->
            <!--                                    <div class="text-left dib">-->
            <!--                                        <div class="stat-text"><span class="count">349</span></div>-->
            <!--                                        <div class="stat-heading">Templates</div>-->
            <!--                                    </div>-->
            <!--                                </div>-->
            <!--                            </div>-->
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                </div>-->

            <!--                <div class="col-lg-3 col-md-6">-->
            <!--                    <div class="card">-->
            <!--                        <div class="card-body">-->
            <!--                            <div class="stat-widget-five">-->
            <!--                                <div class="stat-icon dib flat-color-4">-->
            <!--                                    <i class="pe-7s-users"></i>-->
            <!--                                </div>-->
            <!--                                <div class="stat-content">-->
            <!--                                    <div class="text-left dib">-->
            <!--                                        <div class="stat-text"><span class="count">2986</span></div>-->
            <!--                                        <div class="stat-heading">Clients</div>-->
            <!--                                    </div>-->
            <!--                                </div>-->
            <!--                            </div>-->
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                </div>-->
            <!--            </div>-->
            <!-- /Widgets -->
            <!--  Traffic  -->
            <!--            <div class="row">-->
            <!--                <div class="col-lg-12">-->
            <!--                    <div class="card">-->
            <!--                        <div class="card-body">-->
            <!--                            <h4 class="box-title">Traffic </h4>-->
            <!--                        </div>-->
            <!--                        <div class="row">-->
            <!--                            <div class="col-lg-8">-->
            <!--                                <div class="card-body">-->
            <!--                                    &lt;!&ndash; <canvas id="TrafficChart"></canvas>   &ndash;&gt;-->
            <!--                                    <div id="traffic-chart" class="traffic-chart"></div>-->
            <!--                                </div>-->
            <!--                            </div>-->
            <!--                            <div class="col-lg-4">-->
            <!--                                <div class="card-body">-->
            <!--                                    <div class="progress-box progress-1">-->
            <!--                                        <h4 class="por-title">Visits</h4>-->
            <!--                                        <div class="por-txt">96,930 Users (40%)</div>-->
            <!--                                        <div class="progress mb-2" style="height: 5px;">-->
            <!--                                            <div class="progress-bar bg-flat-color-1" role="progressbar"-->
            <!--                                                 style="width: 40%;" aria-valuenow="25" aria-valuemin="0"-->
            <!--                                                 aria-valuemax="100"></div>-->
            <!--                                        </div>-->
            <!--                                    </div>-->
            <!--                                    <div class="progress-box progress-2">-->
            <!--                                        <h4 class="por-title">Bounce Rate</h4>-->
            <!--                                        <div class="por-txt">3,220 Users (24%)</div>-->
            <!--                                        <div class="progress mb-2" style="height: 5px;">-->
            <!--                                            <div class="progress-bar bg-flat-color-2" role="progressbar"-->
            <!--                                                 style="width: 24%;" aria-valuenow="25" aria-valuemin="0"-->
            <!--                                                 aria-valuemax="100"></div>-->
            <!--                                        </div>-->
            <!--                                    </div>-->
            <!--                                    <div class="progress-box progress-2">-->
            <!--                                        <h4 class="por-title">Unique Visitors</h4>-->
            <!--                                        <div class="por-txt">29,658 Users (60%)</div>-->
            <!--                                        <div class="progress mb-2" style="height: 5px;">-->
            <!--                                            <div class="progress-bar bg-flat-color-3" role="progressbar"-->
            <!--                                                 style="width: 60%;" aria-valuenow="60" aria-valuemin="0"-->
            <!--                                                 aria-valuemax="100"></div>-->
            <!--                                        </div>-->
            <!--                                    </div>-->
            <!--                                    <div class="progress-box progress-2">-->
            <!--                                        <h4 class="por-title">Targeted Visitors</h4>-->
            <!--                                        <div class="por-txt">99,658 Users (90%)</div>-->
            <!--                                        <div class="progress mb-2" style="height: 5px;">-->
            <!--                                            <div class="progress-bar bg-flat-color-4" role="progressbar"-->
            <!--                                                 style="width: 90%;" aria-valuenow="90" aria-valuemin="0"-->
            <!--                                                 aria-valuemax="100"></div>-->
            <!--                                        </div>-->
            <!--                                    </div>-->
            <!--                                </div> &lt;!&ndash; /.card-body &ndash;&gt;-->
            <!--                            </div>-->
            <!--                        </div> &lt;!&ndash; /.row &ndash;&gt;-->
            <!--                        <div class="card-body"></div>-->
            <!--                    </div>-->
            <!--                </div>&lt;!&ndash; /# column &ndash;&gt;-->
            <!--            </div>-->
            <!--  /Traffic -->
            <div class="clearfix"></div>
            <!-- Orders -->
            <!--            <div class="orders">-->
            <!--                <div class="row">-->
            <!--                    <div class="col-xl-8">-->
            <!--                        <div class="card">-->
            <!--                            <div class="card-body">-->
            <!--                                <h4 class="box-title">Orders </h4>-->
            <!--                            </div>-->
            <!--                            <div class="card-body&#45;&#45;">-->
            <!--                                <div class="table-stats order-table ov-h">-->
            <!--                                    <table class="table ">-->
            <!--                                        <thead>-->
            <!--                                        <tr>-->
            <!--                                            <th class="serial">#</th>-->
            <!--                                            <th class="avatar">Avatar</th>-->
            <!--                                            <th>ID</th>-->
            <!--                                            <th>Name</th>-->
            <!--                                            <th>Product</th>-->
            <!--                                            <th>Quantity</th>-->
            <!--                                            <th>Status</th>-->
            <!--                                        </tr>-->
            <!--                                        </thead>-->
            <!--                                        <tbody>-->
            <!--                                        <tr>-->
            <!--                                            <td class="serial">1.</td>-->
            <!--                                            <td class="avatar">-->
            <!--                                                <div class="round-img">-->
            <!--                                                    <a href="#"><img class="rounded-circle" src="images/avatar/1.jpg"-->
            <!--                                                                     alt=""></a>-->
            <!--                                                </div>-->
            <!--                                            </td>-->
            <!--                                            <td> #5469</td>-->
            <!--                                            <td><span class="name">Louis Stanley</span></td>-->
            <!--                                            <td><span class="product">iMax</span></td>-->
            <!--                                            <td><span class="count">231</span></td>-->
            <!--                                            <td>-->
            <!--                                                <span class="badge badge-complete">Complete</span>-->
            <!--                                            </td>-->
            <!--                                        </tr>-->
            <!--                                        <tr>-->
            <!--                                            <td class="serial">2.</td>-->
            <!--                                            <td class="avatar">-->
            <!--                                                <div class="round-img">-->
            <!--                                                    <a href="#"><img class="rounded-circle" src="images/avatar/2.jpg"-->
            <!--                                                                     alt=""></a>-->
            <!--                                                </div>-->
            <!--                                            </td>-->
            <!--                                            <td> #5468</td>-->
            <!--                                            <td><span class="name">Gregory Dixon</span></td>-->
            <!--                                            <td><span class="product">iPad</span></td>-->
            <!--                                            <td><span class="count">250</span></td>-->
            <!--                                            <td>-->
            <!--                                                <span class="badge badge-complete">Complete</span>-->
            <!--                                            </td>-->
            <!--                                        </tr>-->
            <!--                                        <tr>-->
            <!--                                            <td class="serial">3.</td>-->
            <!--                                            <td class="avatar">-->
            <!--                                                <div class="round-img">-->
            <!--                                                    <a href="#"><img class="rounded-circle" src="images/avatar/3.jpg"-->
            <!--                                                                     alt=""></a>-->
            <!--                                                </div>-->
            <!--                                            </td>-->
            <!--                                            <td> #5467</td>-->
            <!--                                            <td><span class="name">Catherine Dixon</span></td>-->
            <!--                                            <td><span class="product">SSD</span></td>-->
            <!--                                            <td><span class="count">250</span></td>-->
            <!--                                            <td>-->
            <!--                                                <span class="badge badge-complete">Complete</span>-->
            <!--                                            </td>-->
            <!--                                        </tr>-->
            <!--                                        <tr>-->
            <!--                                            <td class="serial">4.</td>-->
            <!--                                            <td class="avatar">-->
            <!--                                                <div class="round-img">-->
            <!--                                                    <a href="#"><img class="rounded-circle" src="images/avatar/4.jpg"-->
            <!--                                                                     alt=""></a>-->
            <!--                                                </div>-->
            <!--                                            </td>-->
            <!--                                            <td> #5466</td>-->
            <!--                                            <td><span class="name">Mary Silva</span></td>-->
            <!--                                            <td><span class="product">Magic Mouse</span></td>-->
            <!--                                            <td><span class="count">250</span></td>-->
            <!--                                            <td>-->
            <!--                                                <span class="badge badge-pending">Pending</span>-->
            <!--                                            </td>-->
            <!--                                        </tr>-->
            <!--                                        <tr class=" pb-0">-->
            <!--                                            <td class="serial">5.</td>-->
            <!--                                            <td class="avatar pb-0">-->
            <!--                                                <div class="round-img">-->
            <!--                                                    <a href="#"><img class="rounded-circle" src="images/avatar/6.jpg"-->
            <!--                                                                     alt=""></a>-->
            <!--                                                </div>-->
            <!--                                            </td>-->
            <!--                                            <td> #5465</td>-->
            <!--                                            <td><span class="name">Johnny Stephens</span></td>-->
            <!--                                            <td><span class="product">Monitor</span></td>-->
            <!--                                            <td><span class="count">250</span></td>-->
            <!--                                            <td>-->
            <!--                                                <span class="badge badge-complete">Complete</span>-->
            <!--                                            </td>-->
            <!--                                        </tr>-->
            <!--                                        </tbody>-->
            <!--                                    </table>-->
            <!--                                </div> &lt;!&ndash; /.table-stats &ndash;&gt;-->
            <!--                            </div>-->
            <!--                        </div> &lt;!&ndash; /.card &ndash;&gt;-->
            <!--                    </div>  &lt;!&ndash; /.col-lg-8 &ndash;&gt;-->

            <!--                    <div class="col-xl-4">-->
            <!--                        <div class="row">-->
            <!--                            <div class="col-lg-6 col-xl-12">-->
            <!--                                <div class="card br-0">-->
            <!--                                    <div class="card-body">-->
            <!--                                        <div class="chart-container ov-h">-->
            <!--                                            <div id="flotPie1" class="float-chart"></div>-->
            <!--                                        </div>-->
            <!--                                    </div>-->
            <!--                                </div>&lt;!&ndash; /.card &ndash;&gt;-->
            <!--                            </div>-->

            <!--                            <div class="col-lg-6 col-xl-12">-->
            <!--                                <div class="card bg-flat-color-3  ">-->
            <!--                                    <div class="card-body">-->
            <!--                                        <h4 class="card-title m-0  white-color ">August 2018</h4>-->
            <!--                                    </div>-->
            <!--                                    <div class="card-body">-->
            <!--                                        <div id="flotLine5" class="flot-line"></div>-->
            <!--                                    </div>-->
            <!--                                </div>-->
            <!--                            </div>-->
            <!--                        </div>-->
            <!--                    </div> &lt;!&ndash; /.col-md-4 &ndash;&gt;-->
            <!--                </div>-->
            <!--            </div>-->
            <!-- /.orders -->
            <!-- To Do and Live Chat -->
            <!--            <div class="row">-->
            <!--                <div class="col-lg-6">-->
            <!--                    <div class="card">-->
            <!--                        <div class="card-body">-->
            <!--                            <h4 class="card-title box-title">To Do List</h4>-->
            <!--                            <div class="card-content">-->
            <!--                                <div class="todo-list">-->
            <!--                                    <div class="tdl-holder">-->
            <!--                                        <div class="tdl-content">-->
            <!--                                            <ul>-->
            <!--                                                <li>-->
            <!--                                                    <label>-->
            <!--                                                        <input type="checkbox"><i class="check-box"></i><span>Conveniently fabricate interactive technology for ....</span>-->
            <!--                                                        <a href='#' class="fa fa-times"></a>-->
            <!--                                                        <a href='#' class="fa fa-pencil"></a>-->
            <!--                                                        <a href='#' class="fa fa-check"></a>-->
            <!--                                                    </label>-->
            <!--                                                </li>-->
            <!--                                                <li>-->
            <!--                                                    <label>-->
            <!--                                                        <input type="checkbox"><i class="check-box"></i><span>Creating component page</span>-->
            <!--                                                        <a href='#' class="fa fa-times"></a>-->
            <!--                                                        <a href='#' class="fa fa-pencil"></a>-->
            <!--                                                        <a href='#' class="fa fa-check"></a>-->
            <!--                                                    </label>-->
            <!--                                                </li>-->
            <!--                                                <li>-->
            <!--                                                    <label>-->
            <!--                                                        <input type="checkbox" checked><i class="check-box"></i><span>Follow back those who follow you</span>-->
            <!--                                                        <a href='#' class="fa fa-times"></a>-->
            <!--                                                        <a href='#' class="fa fa-pencil"></a>-->
            <!--                                                        <a href='#' class="fa fa-check"></a>-->
            <!--                                                    </label>-->
            <!--                                                </li>-->
            <!--                                                <li>-->
            <!--                                                    <label>-->
            <!--                                                        <input type="checkbox" checked><i class="check-box"></i><span>Design One page theme</span>-->
            <!--                                                        <a href='#' class="fa fa-times"></a>-->
            <!--                                                        <a href='#' class="fa fa-pencil"></a>-->
            <!--                                                        <a href='#' class="fa fa-check"></a>-->
            <!--                                                    </label>-->
            <!--                                                </li>-->

            <!--                                                <li>-->
            <!--                                                    <label>-->
            <!--                                                        <input type="checkbox" checked><i class="check-box"></i><span>Creating component page</span>-->
            <!--                                                        <a href='#' class="fa fa-times"></a>-->
            <!--                                                        <a href='#' class="fa fa-pencil"></a>-->
            <!--                                                        <a href='#' class="fa fa-check"></a>-->
            <!--                                                    </label>-->
            <!--                                                </li>-->
            <!--                                            </ul>-->
            <!--                                        </div>-->
            <!--                                    </div>-->
            <!--                                </div> &lt;!&ndash; /.todo-list &ndash;&gt;-->
            <!--                            </div>-->
            <!--                        </div> &lt;!&ndash; /.card-body &ndash;&gt;-->
            <!--                    </div>&lt;!&ndash; /.card &ndash;&gt;-->
            <!--                </div>-->

            <!--                <div class="col-lg-6">-->
            <!--                    <div class="card">-->
            <!--                        <div class="card-body">-->
            <!--                            <h4 class="card-title box-title">Live Chat</h4>-->
            <!--                            <div class="card-content">-->
            <!--                                <div class="messenger-box">-->
            <!--                                    <ul>-->
            <!--                                        <li>-->
            <!--                                            <div class="msg-received msg-container">-->
            <!--                                                <div class="avatar">-->
            <!--                                                    <img src="images/avatar/64-1.jpg" alt="">-->
            <!--                                                    <div class="send-time">11.11 am</div>-->
            <!--                                                </div>-->
            <!--                                                <div class="msg-box">-->
            <!--                                                    <div class="inner-box">-->
            <!--                                                        <div class="name">-->
            <!--                                                            John Doe-->
            <!--                                                        </div>-->
            <!--                                                        <div class="meg">-->
            <!--                                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit.-->
            <!--                                                            Perspiciatis sunt placeat velit ad reiciendis ipsam-->
            <!--                                                        </div>-->
            <!--                                                    </div>-->
            <!--                                                </div>-->
            <!--                                            </div>&lt;!&ndash; /.msg-received &ndash;&gt;-->
            <!--                                        </li>-->
            <!--                                        <li>-->
            <!--                                            <div class="msg-sent msg-container">-->
            <!--                                                <div class="avatar">-->
            <!--                                                    <img src="images/avatar/64-2.jpg" alt="">-->
            <!--                                                    <div class="send-time">11.11 am</div>-->
            <!--                                                </div>-->
            <!--                                                <div class="msg-box">-->
            <!--                                                    <div class="inner-box">-->
            <!--                                                        <div class="name">-->
            <!--                                                            John Doe-->
            <!--                                                        </div>-->
            <!--                                                        <div class="meg">-->
            <!--                                                            Hay how are you doing?-->
            <!--                                                        </div>-->
            <!--                                                    </div>-->
            <!--                                                </div>-->
            <!--                                            </div>&lt;!&ndash; /.msg-sent &ndash;&gt;-->
            <!--                                        </li>-->
            <!--                                    </ul>-->
            <!--                                    <div class="send-mgs">-->
            <!--                                        <div class="yourmsg">-->
            <!--                                            <input class="form-control" type="text">-->
            <!--                                        </div>-->
            <!--                                        <button class="btn msg-send-btn">-->
            <!--                                            <i class="pe-7s-paper-plane"></i>-->
            <!--                                        </button>-->
            <!--                                    </div>-->
            <!--                                </div>&lt;!&ndash; /.messenger-box &ndash;&gt;-->
            <!--                            </div>-->
            <!--                        </div> &lt;!&ndash; /.card-body &ndash;&gt;-->
            <!--                    </div>&lt;!&ndash; /.card &ndash;&gt;-->
            <!--                </div>-->
            <!--            </div>-->
            <!-- /To Do and Live Chat -->
            <!-- Calender Chart Weather  -->
            <!--            <div class="row">-->
            <!--                <div class="col-md-12 col-lg-4">-->
            <!--                    <div class="card">-->
            <!--                        <div class="card-body">-->
            <!--                            &lt;!&ndash; <h4 class="box-title">Chandler</h4> &ndash;&gt;-->
            <!--                            <div class="calender-cont widget-calender">-->
            <!--                                <div id="calendar"></div>-->
            <!--                            </div>-->
            <!--                        </div>-->
            <!--                    </div>&lt;!&ndash; /.card &ndash;&gt;-->
            <!--                </div>-->

            <!--                <div class="col-lg-4 col-md-6">-->
            <!--                    <div class="card ov-h">-->
            <!--                        <div class="card-body bg-flat-color-2">-->
            <!--                            <div id="flotBarChart" class="float-chart ml-4 mr-4"></div>-->
            <!--                        </div>-->
            <!--                        <div id="cellPaiChart" class="float-chart"></div>-->
            <!--                    </div>&lt;!&ndash; /.card &ndash;&gt;-->
            <!--                </div>-->
            <!--                <div class="col-lg-4 col-md-6">-->
            <!--                    <div class="card weather-box">-->
            <!--                        <h4 class="weather-title box-title">Weather</h4>-->
            <!--                        <div class="card-body">-->
            <!--                            <div class="weather-widget">-->
            <!--                                <div id="weather-one" class="weather-one"></div>-->
            <!--                            </div>-->
            <!--                        </div>-->
            <!--                    </div>&lt;!&ndash; /.card &ndash;&gt;-->
            <!--                </div>-->
            <!--            </div>-->
            <!-- /Calender Chart Weather -->
            <!-- Modal - Calendar - Add New Event -->
            <!--            <div class="modal fade none-border" id="event-modal">-->
            <!--                <div class="modal-dialog">-->
            <!--                    <div class="modal-content">-->
            <!--                        <div class="modal-header">-->
            <!--                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>-->
            <!--                            <h4 class="modal-title"><strong>Add New Event</strong></h4>-->
            <!--                        </div>-->
            <!--                        <div class="modal-body"></div>-->
            <!--                        <div class="modal-footer">-->
            <!--                            <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close-->
            <!--                            </button>-->
            <!--                            <button type="button" class="btn btn-success save-event waves-effect waves-light">Create-->
            <!--                                event-->
            <!--                            </button>-->
            <!--                            <button type="button" class="btn btn-danger delete-event waves-effect waves-light"-->
            <!--                                    data-dismiss="modal">Delete-->
            <!--                            </button>-->
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                </div>-->
            <!--            </div>-->
            <!-- /#event-modal -->
            <!-- Modal - Calendar - Add Category -->
            <!--            <div class="modal fade none-border" id="add-category">-->
            <!--                <div class="modal-dialog">-->
            <!--                    <div class="modal-content">-->
            <!--                        <div class="modal-header">-->
            <!--                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>-->
            <!--                            <h4 class="modal-title"><strong>Add a category </strong></h4>-->
            <!--                        </div>-->
            <!--                        <div class="modal-body">-->
            <!--                            <form>-->
            <!--                                <div class="row">-->
            <!--                                    <div class="col-md-6">-->
            <!--                                        <label class="control-label">Category Name</label>-->
            <!--                                        <input class="form-control form-white" placeholder="Enter name" type="text"-->
            <!--                                               name="category-name"/>-->
            <!--                                    </div>-->
            <!--                                    <div class="col-md-6">-->
            <!--                                        <label class="control-label">Choose Category Color</label>-->
            <!--                                        <select class="form-control form-white" data-placeholder="Choose a color..."-->
            <!--                                                name="category-color">-->
            <!--                                            <option value="success">Success</option>-->
            <!--                                            <option value="danger">Danger</option>-->
            <!--                                            <option value="info">Info</option>-->
            <!--                                            <option value="pink">Pink</option>-->
            <!--                                            <option value="primary">Primary</option>-->
            <!--                                            <option value="warning">Warning</option>-->
            <!--                                        </select>-->
            <!--                                    </div>-->
            <!--                                </div>-->
            <!--                            </form>-->
            <!--                        </div>-->
            <!--                        <div class="modal-footer">-->
            <!--                            <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close-->
            <!--                            </button>-->
            <!--                            <button type="button" class="btn btn-danger waves-effect waves-light save-category"-->
            <!--                                    data-dismiss="modal">Save-->
            <!--                            </button>-->
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                </div>-->
            <!--            </div>-->
            <!-- /#add-category -->
        </div>
        <!-- .animated -->
    </div>
    <!-- /.content -->
    <div class="clearfix"></div>
    <!-- Footer -->
    <footer class="site-footer">
        <div class="footer-inner bg-white">
            <div class="row">
                <div class="col-sm-6">
                </div>
                <div class="col-sm-6 text-right">
                </div>
            </div>
        </div>
    </footer>
    <!-- /.site-footer -->
</div>
<!-- /#right-panel -->
<div>
    ${WXUser.userid}
    ${WXUser.name}
    ${WXUser.department}
    ${WXUser.position}
</div>
<script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/plugins.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/lib/chart-js/Chart.bundle.js"></script>

<script src="assets/js/lib/chartist/chartist.min.js"></script>
<script src="assets/js/lib/chartist/chartist-plugin-legend.js"></script>
<script src="assets/js/lib/flot-chart/jquery.flot.js"></script>
<script src="assets/js/lib/flot-chart/jquery.flot.pie.js"></script>
<script src="assets/js/lib/flot-chart/jquery.flot.spline.js"></script>
<script src="assets/weather/js/jquery.simpleWeather.min.js"></script>
<script src="assets/weather/js/weather-init.js"></script>
<script src="assets/js/lib/moment/moment.js"></script>
<script src="assets/calendar/fullcalendar.min.js"></script>
<script src="assets/calendar/fullcalendar-init.js"></script>
<script src="assets/js/init/weather-init.js"></script>

<script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
<script src="assets/js/init/fullcalendar-init.js"></script>
</body>
<script>
    jQuery(document).ready(function ($) {
        "use strict";

        // Pie chart flotPie1
        var piedata = [
            {label: "Desktop visits", data: [[1, 32]], color: '#5c6bc0'},
            {label: "Tab visits", data: [[1, 33]], color: '#ef5350'},
            {label: "Mobile visits", data: [[1, 35]], color: '#66bb6a'}
        ];

        $.plot('#flotPie1', piedata, {
            series: {
                pie: {
                    show: true,
                    radius: 1,
                    innerRadius: 0.65,
                    label: {
                        show: true,
                        radius: 2 / 3,
                        threshold: 1
                    },
                    stroke: {
                        width: 0
                    }
                }
            },
            grid: {
                hoverable: true,
                clickable: true
            }
        });
        // Pie chart flotPie1  End
        // cellPaiChart
        var cellPaiChart = [
            {label: "Direct Sell", data: [[1, 65]], color: '#5b83de'},
            {label: "Channel Sell", data: [[1, 35]], color: '#00bfa5'}
        ];
        $.plot('#cellPaiChart', cellPaiChart, {
            series: {
                pie: {
                    show: true,
                    stroke: {
                        width: 0
                    }
                }
            },
            legend: {
                show: false
            }, grid: {
                hoverable: true,
                clickable: true
            }

        });
        // cellPaiChart End
        // Line Chart  #flotLine5
        var newCust = [[0, 3], [1, 5], [2, 4], [3, 7], [4, 9], [5, 3], [6, 6], [7, 4], [8, 10]];

        var plot = $.plot($('#flotLine5'), [{
                data: newCust,
                label: 'New Data Flow',
                color: '#fff'
            }],
            {
                series: {
                    lines: {
                        show: true,
                        lineColor: '#fff',
                        lineWidth: 2
                    },
                    points: {
                        show: true,
                        fill: true,
                        fillColor: "#ffffff",
                        symbol: "circle",
                        radius: 3
                    },
                    shadowSize: 0
                },
                points: {
                    show: true,
                },
                legend: {
                    show: false
                },
                grid: {
                    show: false
                }
            });
        // Line Chart  #flotLine5 End
        // Traffic Chart using chartist
        if ($('#traffic-chart').length) {
            var chart = new Chartist.Line('#traffic-chart', {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
                series: [
                    [0, 18000, 35000, 25000, 22000, 0],
                    [0, 33000, 15000, 20000, 15000, 300],
                    [0, 15000, 28000, 15000, 30000, 5000]
                ]
            }, {
                low: 0,
                showArea: true,
                showLine: false,
                showPoint: false,
                fullWidth: true,
                axisX: {
                    showGrid: true
                }
            });

            chart.on('draw', function (data) {
                if (data.type === 'line' || data.type === 'area') {
                    data.element.animate({
                        d: {
                            begin: 2000 * data.index,
                            dur: 2000,
                            from: data.path.clone().scale(1, 0).translate(0, data.chartRect.height()).stringify(),
                            to: data.path.clone().stringify(),
                            easing: Chartist.Svg.Easing.easeOutQuint
                        }
                    });
                }
            });
        }
        // Traffic Chart using chartist End
        //Traffic chart chart-js
        if ($('#TrafficChart').length) {
            var ctx = document.getElementById("TrafficChart");
            ctx.height = 150;
            var myChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul"],
                    datasets: [
                        {
                            label: "Visit",
                            borderColor: "rgba(4, 73, 203,.09)",
                            borderWidth: "1",
                            backgroundColor: "rgba(4, 73, 203,.5)",
                            data: [0, 2900, 5000, 3300, 6000, 3250, 0]
                        },
                        {
                            label: "Bounce",
                            borderColor: "rgba(245, 23, 66, 0.9)",
                            borderWidth: "1",
                            backgroundColor: "rgba(245, 23, 66,.5)",
                            pointHighlightStroke: "rgba(245, 23, 66,.5)",
                            data: [0, 4200, 4500, 1600, 4200, 1500, 4000]
                        },
                        {
                            label: "Targeted",
                            borderColor: "rgba(40, 169, 46, 0.9)",
                            borderWidth: "1",
                            backgroundColor: "rgba(40, 169, 46, .5)",
                            pointHighlightStroke: "rgba(40, 169, 46,.5)",
                            data: [1000, 5200, 3600, 2600, 4200, 5300, 0]
                        }
                    ]
                },
                options: {
                    responsive: true,
                    tooltips: {
                        mode: 'index',
                        intersect: false
                    },
                    hover: {
                        mode: 'nearest',
                        intersect: true
                    }

                }
            });
        }
        //Traffic chart chart-js  End
        // Bar Chart #flotBarChart
        $.plot("#flotBarChart", [{
            data: [[0, 18], [2, 8], [4, 5], [6, 13], [8, 5], [10, 7], [12, 4], [14, 6], [16, 15], [18, 9], [20, 17], [22, 7], [24, 4], [26, 9], [28, 11]],
            bars: {
                show: true,
                lineWidth: 0,
                fillColor: '#ffffff8a'
            }
        }], {
            grid: {
                show: false
            }
        });
        // Bar Chart #flotBarChart End
    });
</script>
</html>
