<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>管理员登录</title>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" />
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js" ></script>

  </head>
  
  <body>
    <!-- <form action="manager_login" method="post">
             账号：<input name="name" type="text"><br>
             密码：    <input name="password" type="password"><br>
        <input type="submit" value="登录">
    </form> -->
    <form action="manager_login" method="post">
        <div class="content">
    	<div class="img">
    	   <img src="${pageContext.request.contextPath}/images/loginlogo.jpg" />
    	  </div>
			<div id="title">约球吧管理员登录</div>
			 
		    <div class="main">
		        <div class="line" style="margin:50px 0 0 50px">     
		            <span >账&nbsp;&nbsp;号：</span> 
		            <input name="name" type="text" placeholder="请输入账号"> 
		    
		       </div>
		       <div class="line"> 
		           <span>密&nbsp;&nbsp;码：</span> 
		           <input name="password" type="password" placeholder="请输入密码"><br>
		            
		       </div>
		       <div class="btn">
		       	   	<input value="登&nbsp;&nbsp;录" type="submit" class="btn btn-primary btn-lg"> 
		       </div>
		       
		     
		    </div>
	</div></form>
  </body>
</html>
