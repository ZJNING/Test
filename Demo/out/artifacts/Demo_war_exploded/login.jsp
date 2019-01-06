<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/login.css"/>
    <title>登录页</title>
    <style type="text/css">
        body{
            /*height: 100px;weight:100px;*/
            /*background-image:url(img/timg.jpg) ;*/
            /*background-repeat:no-repeat;*/
            /*background-size:100%  auto;*/
            background-color: #4b4a5e;
        }

    </style>
</head>
<body>
<form action="LoginServlet" method="post" onsubmit="return check()">
    <div class="login">
        <div class="login-error">
            ${login_error}
        </div>
        <div class="login-top">
            登录
        </div>
        <div class="login-center clearfix">
            <div class="login-center-img"><img src="img/name.png"/></div>
            <div class="login-center-input">
                <input type="text" id="username"  name="username" value="" placeholder="请输入您的账号" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的账号'"/>
            </div>
        </div>
        <br>
        <br>
        <br>
        <div class="login-center clearfix">
            <div class="login-center-img"><img src="img/password.png"/></div>
            <div class="login-center-input">
                <input type="password" id="password"  name="password"value="" placeholder="请输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'"/>
            </div>
        </div>
        <br>
        <br>
        <br>
        <button type="submit" class="login-button">登陆</button>
    </div>
</form>
</body>
<script type="text/javascript">

    function check(){

        var username=document.getElementById("username").value;
        var password=document.getElementById("password").value;
        if(username==""){
            alert("用户名不能为空");
            return false;

        }
        if(password==""){
            alert("密码不能为空");
            return false;
        }
        return true;



    }
</script>
</html>