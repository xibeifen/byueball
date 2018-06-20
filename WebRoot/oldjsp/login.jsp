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

  </head>
  
  <body>
		<div class="contnet" style="height:550px;">
			<div class="title style="height:80px;"> 
		    <h1 style="height:80px;text-align: center;">队伍登录页面</h1>
		    </div>
		<form action="team_login" method="post">
		<div class="main" style="height: 470px;">
		    <div class="line" style="height: 45px;">      
		           <span style="height: 45px;float: left;font-size: 25px;margin: 0 0 0 400px;">请输入手机号：</span>
		           <div style="height: 45px;">
		              <input name="capTel" style="height: 30px;width: 300px;" type="text"> 
		              <input value="获取验证码" name="yzm" class="adminbutton" onmouseout="this.style.backgroundColor='cornflowerblue'" onmouseover="this.style.backgroundColor='blue'" type="button"><br>
		          </div>
		       </div>
		        <div class="line"> 
		           <span style="height: 45px;float: left;font-size: 25px;margin: 0 0 0 400px;"> 短信 验证码：</span>
		           <div style="height: 45px;">
		           <input name="yzm" style="height: 30px;width: 200px;" type="yzm"><br>
		           </div>
		        </div>
		        <input value="登录" style="height: 45px;width: 300px;margin: 50px 0 0 500px;background: cornflowerblue;color: white;" class="adminbutton" onmouseout="this.style.backgroundColor='cornflowerblue'" onmouseover="this.style.backgroundColor='blue'" type="submit">	     
		</div>
		</form>
		</div>
  </body>
</html>
