<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
  <title>队伍登陆页面</title>
  
     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" />
	   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js" ></script>

  </head>
  
  <body>
  <form action="team_login" method="post">
          <div class="content">
    	
			<div id="title">队伍登录</div>
			 
		    <div class="main">
		        <div class="line" style="margin:50px 0 0 50px">     
		            <span >队&nbsp;&nbsp;名：</span> 
		            <input name="name" type="text" placeholder="请输入账号"> 
		    
		       </div>
		       <div class="line"> 
		           <span>密&nbsp;&nbsp;码：</span> 
		           <input name="capTel" type="password" placeholder="请输入密码"><br>
		            
		       </div>
		       <div class="btn">
		       	   <!-- <a href="index.html">
		       	   	   <input value="登&nbsp;&nbsp;录" type="submit" class="btn btn-primary btn-lg" onclick="jump();"/>
		       	   </a> -->
		       	   <input value="登&nbsp;&nbsp;录" type="submit"  class="btn btn-primary btn-lg"/>
		       </div>
		       
		     
		    </div>
	</div></form>
  </body>
</html>
