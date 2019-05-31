<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/31
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp</title>
    <link href="css/indexstyles.css" rel="stylesheet">
    <script src="http://rescdn.qqmail.com/node/ww/wwopenmng/js/sso/wwLogin-1.0.0.js"></script>
</head>
<body>
<div class="jq22-container" style="padding-top:100px">
    <div class="login-wrap">
        <div class="login-html">
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1"
                                                                                     class="tab">扫描二维码登录</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">账号密码登录</label>
            <div class="login-form">
                <div class="sign-in-htm" >
                    <div class="group" id="wx_reg">
                    </div>
                </div>
                <div class="sign-up-htm">
                    <div class="group">
                        <label for="user" class="label">用户名</label>
                        <input id="user" type="text" class="input">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">密码</label>
                        <input id="pass" type="password" class="input" data-type="password">
                    </div>
                    <div class="group">
                        <input id="check" type="checkbox" class="check" checked>
                        <label for="check"><span class="icon"></span> 记住账号密码</label>
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="登录">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <a href="#">忘记密码</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    //企业微信二维码构造
    window.WwLogin({
        "id": "wx_reg",
        "appid": "wx60fb60c92a367e5d",
        "agentid": "1000045",
        "redirect_uri": "http://127.0.0.1:8080/JavaSpringHibernate_war_exploded/index",
        "state": "",
        "href": ""
    });
</script>
</body>
</html>
