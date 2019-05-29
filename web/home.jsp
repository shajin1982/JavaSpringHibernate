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
    <title>jsp</title>
    <script src="jQuery/jquery-3.1.1.min.js"></script>
    <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
    <script src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.css" type="text/css">
</head>
<body class="text-center" style="background-color: #9acfea">
<img src="image/logo_hq.png" style="width: 150px;height: 150px;margin-top:10px">
<h1 style="margin-top: 30px;color: #2b669a;font-family: 微软雅黑" >南通化轻内部平台</h1>
<div class="btn-group">
    <a class="btn btn-lg btn-primary" href="#">
        <i class="fa fa-handshake-o fa-5x pull-left"></i> 人力<br>行政<br>中心</a>
    <a class="btn btn-lg btn-primary" href="#">
        <i class="fa fa-search fa-5x pull-left"></i> 内审<br>中心</a>
    <a class="btn btn-lg btn-primary" href="#">
        <i class="fa fa-laptop fa-5x pull-left"></i> 信息<br>中心</a>
    <a class="btn btn-lg btn-primary" href="#">
        <i class="fa fa-shield fa-5x pull-left"></i> 安环<br>中心</a>
    <a class="btn btn-lg btn-primary" href="#">
        <i class="fa fa-truck fa-5x pull-left"></i> 物流<br>中心</a>
    <a class="btn btn-lg btn-primary" href="#">
        <i class="fa fa-line-chart fa-5x pull-left"></i> 业务<br>部门</a>
</div>
<div>
${uid}
</div>
</body>
<script>
    $(document).ready(function () {
        $.ajax({

        });
        $('.btn-group').css({
            position: 'absolute',
            left: ($(window).width() - $('.btn-group').outerWidth()) / 2,
            top: ($(window).height() - $('.btn-group').outerHeight()) / 2 + $(document).scrollTop()
        });
    });
</script>
</html>