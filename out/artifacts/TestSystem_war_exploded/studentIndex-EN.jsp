<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>Student Center</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
    <div class="logo margin-big-left fadein-top">
        <h1><img src="images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />hello：${username}</h1>
    </div>
    <div class="head-l"> <a href="##" class="button button-little bg-blue"><span class="icon-wrench"></span> Clear cache</a> &nbsp;&nbsp;<a class="button button-little bg-red" href="../../register.jsp"><span class="icon-power-off"></span> Log out</a> </div>
</div>
<div class="leftnav">
    <div class="leftnav-title"><strong><span class="icon-list"></span>Menu list</strong></div>
    <h2><span class="icon-user"></span>system management</h2>
    <ul style="display:block">
        <li><a href="questionServlet?method=getPaperList" target="right"><span class="icon-caret-right"></span>Online examination</a></li>
        <li><a href="gradeServlet?method=getGradeList" target="right"><span class="icon-caret-right"></span>Performance management</a></li>
    </ul>

</div>
<script type="text/javascript">
    $(function(){
        $(".leftnav h2").click(function(){
            $(this).next().slideToggle(200);
            $(this).toggleClass("on");
        })
        $(".leftnav ul li a").click(function(){
            $("#a_leader_txt").text($(this).text());
            $(".leftnav ul li a").removeClass("on");
            $(this).addClass("on");
        })
    });
</script>
<ul class="bread">
    <li><a href="{:U('Index/info')}" target="right" class="icon-home"> home page</a></li>
    <li><a href="##" id="a_leader_txt">Website information</a></li>
    <li><b>Current language：</b><span style="color:red;">English</span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;switch language：<a href="<%=path%>WEB-INF/user/studentIndex.jsp">Chinese</a> &nbsp;&nbsp;<a href="<%=path%>studentIndex-EN.jsp">English</a> </li>
</ul>
<div class="admin">
    <iframe scrolling="auto" rameborder="0" src="info.html" name="right" width="100%" height="100%"></iframe>
</div>

</body>
</html>