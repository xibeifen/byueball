<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/regist.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.js" ></script>
<link href="${pageContext.request.contextPath}">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/my.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/yanzheng.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            loadSelect("001", "aveAge", "aveAge.dictId",null);
            loadSelect("002", "aveLevel", "aveLevel.dictId",null);
        });
    </script>
</head>
<body>
	<form action="team_register" method="post" id="teamForm">
		     <div class="content" >
			<div id="title">约球吧</div>
		    
		    <div class="main" >
		    	<div class="line"  style="margin-top: 30px;">
		              <span >队&nbsp;&nbsp;伍&nbsp;&nbsp;名：</span>
		              <input name="name" type="text" id="name" onchange="checkuse()" placeholder="请输入队伍名"/><br>
		              <span id="checktext1"></span> 
		             <!--  <input name="teamName"  type="text" placeholder="请输入队伍名"><br> -->
		             
		        </div>
		       
		        <div class="line" >      
		              <span >年&nbsp;&nbsp;龄&nbsp;&nbsp;段：</span>
		              <span id="aveAge"></span>  <br>
		              <span id="checktext2"></span>
		        </div>
		        
		        <div class="line"> 
		              <span >整体水平：</span>
		              <span id="aveLevel"></span>   <br>
					  <span id="checktext3"></span>	    
		             
		        </div>
		        
		        <div class="line">
		              <span >队长姓名：</span>
		              <input name="capName" type="text" id="capName" onchange="checkCapName()" placeholder="请输入队长姓名"/><br> 
		              <span id="checktext4"></span>
		             <!--  <input name="Name"  type="text" placeholder="请输入队长姓名"><br> -->
		              
		        </div>
		        
		        <div class="line" >      
		           <span >密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</span>
		           <input name="capTel" type="password" id="capTel" onchange="checkPassword()" placeholder="请输入密码"/> <br>
           		   <span id="checktext5"></span>
		          
		           <!-- <input  name="phonenumber"  type="text" placeholder="请输入密码">  -->
		       </div>
		       
		        <div class="line"> 
		           <span >确认密码：</span>
		           <input name="recapTel" type="password" id="recapTel" onchange="checkpwd()" placeholder="请再次输入密码"/><br>
		    	   <span id="checktext6"></span>
		          <!--  <input name="yzm"  type="yzm" placeholder="请再次输入密码"><br> -->
		           
		        </div>
		        
		        <s:hidden name="checkState.dictId" value="13"></s:hidden>  
		        <s:hidden name="teamState" value="正在审核"></s:hidden>
		          
		        <div class="t1">
		        	<input value="提交申请"  type="submit" class="btn btn-primary btn-lg" onclick="return checkForm();">
		        	<div><a href="${pageContext.request.contextPath }/jsp/user/login.jsp">已有账号，直接登录</a></div>
		        </div>
		</div>
		</div>
		</form>
    </body>
</html>