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
<style type="text/css">
.table1 {
	border: 1px solid #ddd;
	width: 900px;
}

thead {
	background-color: lightblue;
}
</style>
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
	<!-- onSubmit="return checkForm()" -->
		      <h1 style="height: 80px;text-align: center;">队伍注册页面</h1>
		            
					 请输入队伍名：<input name="name" type="text" id="name" onchange="checkuse()" />
		               <span id="checktext1"></span> <br>
		               		               
		                             平均年龄：<span id="aveAge"></span> 
		                     <span id="checktext2"></span> <br>
		                   
					整体水平：<span id="aveLevel"></span>
					          <span id="checktext3"></span> <br>	         			 
						   
		                             请输入队长姓名： <input name="capName" type="text" id="capName" onchange="checkCapName()"/>
		                        <span id="checktext4"></span><br>    
		                                                                    
           			密码: <input name="capTel" type="password" id="capTel" onchange="checkPassword()" />
           				    <span id="checktext5"></span> <br>
           				        
		    		重新输入密码:<input name="recapTel" type="password" id="recapTel" onchange="checkpwd()"/>
		    			    <span id="checktext6"></span><br>
		    			  
				     <s:hidden name="checkState.dictId" value="13"></s:hidden>  
		    
		             <input value="提交注册申请" type="submit" onclick="return checkForm();"> 
		          <!--  <input value="提交注册申请" type="submit" > -->
		</form>
    </body>
</html>