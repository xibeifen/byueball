<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.lll{
		margin-top: 28px;
		font-family: "仿宋";
	}
.title{
	width: 200px;
	float: left;
	font-size: 24px;
	color: white;
}
.div1 {
	margin-left: 1000px;
	font-size: 14px;
	color: white;
	float: left;
	
}

</style>

</head>

<body bgcolor="#66AFE9">
	<div class="lll">
	<div class="title" >
		<img src="${pageContext.request.contextPath}/images/base.gif" />
		约球吧后台管理
	</div>
	<div class="div1">
		欢迎您：<s:property value="#session.existManager.name" />
	</div>
	</div>
</body>
</html>
