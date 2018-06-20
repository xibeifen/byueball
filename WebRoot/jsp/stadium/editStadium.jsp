<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'editStadium.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<table border="0" width="600px">
		<tr>
			<td align="center" style="font-size: 24px; color: #666">编辑球馆信息</td>
		</tr>
		<tr>
			<td align="right">
			    <a href="javascript:document.getElementById('saveForm').submit()">保存</a>
				&nbsp;&nbsp; 
				<a href="javascript:history.go(-1)">退回 </a>
		    </td>
		</tr>
	</table>
	<br/>
	<br/>
	<!-- action对应一个action标签，id对应提交时的对应关系 -->
	<s:form id="saveForm" action="stadium_update" method="post" namespace="/" theme="simple">
		<!-- 隐藏域，指明修改的是哪个部门 -->
		<s:hidden name="stadiumId" value="%{model.stadiumId}"></s:hidden>
		<table style="font-size:16px" width="600px">
			<tr>
				<td width="30%" align="right">球馆名称：</td>
				<td><s:textfield name="name" value="%{model.name}" /></td>
			</tr>
			<tr>
				<td width="30%" align="right">城市：</td>
				<td><s:textfield name="city" value="%{model.city}" /></td>
			</tr>
			<tr>
				<td width="30%" align="right">区域：</td>
				<td><s:textfield name="district" value="%{model.district}" /></td>
			</tr>
			<tr>
				<td width="30%" align="right">地址：</td>
				<td><s:textfield name="address" value="%{model.address}" /></td>
			</tr>
			<tr>
				<td width="30%" align="right">联系电话：</td>
				<td><s:textfield name="orderTel" value="%{model.orderTel}" /></td>
			</tr>
			<tr>
				<td width="30%" align="right">联系人：</td>
				<td><s:textfield name="contactMan" value="%{model.contactMan}" /></td>
			</tr>
			<tr>
				<td width="30%" align="right">email：</td>
				<td><s:textfield name="email" value="%{model.email}" /></td>
			</tr>
			<tr>
				<td width="30%" align="right">周期：</td>
				<td><s:textfield name="period" value="%{model.period}" /></td>
			</tr>
			<tr>
				<td width="50%" align="right">开放时间：</td>
				<td><s:textfield name="openTime" value="%{model.openTime}" /></td>
			</tr>
			<tr>
				<td width="50%" align="right">闭馆时间：</td>
				<td><s:textfield name="closeTime" value="%{model.closeTime}" /></td>
			</tr>
			<tr>
				<td width="30%" align="right">预约时长：</td>
				<td><s:textfield name="intVal" value="%{model.intVal}" /></td>
			</tr>
			<tr>
				<td width="30%" align="right">图像：</td>
				<td><s:textfield name="img" value="%{model.img}" /></td>
			</tr>
			<tr>
				<td width="50%" align="right">简介：</td>
				<td><s:textarea rows="5" cols="50" name="suggest" value="%{model.suggest}"></s:textarea></td>
			</tr>

		</table>
	</s:form>
  </body>
</html>
