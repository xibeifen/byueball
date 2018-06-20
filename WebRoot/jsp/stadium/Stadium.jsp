<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>场馆信息页面</title>
<style type="text/css">
.table1 {
	border: 1px solid #ddd;
	width: 900px;
}

thead {
	background-color: lightblue;
}
</style>

  </head>
  
  <body>
    <table cellspacing="0" border="1" class="table1">
		<thead>
			<tr>
			 	<th width="300">场馆名</th>
				<th width="300">城市</th>
				<th width="300">区域</th>
				<th width="500">详细地址</th>
				<th width="300">联系电话</th>
				<th width="300">联系人</th>
				<th width="300">email</th>
				<th width="300">周期</th>
				<th width="300">开放时间</th>
				<th width="300">闭馆时间</th>
				<th width="300">预约时长</th>
				<th width="300">图片</th>
				<th width="300">场馆简介</th>
			</tr>
		</thead>
		<tbody> 
				<tr>
					<td align="center"><s:property value="#session.stadium.name" /></td>
					<td align="center"><s:property value="#session.stadium.city" /></td>
					<td align="center"><s:property value="#session.stadium.district" /></td>
					<td align="center"><s:property value="#session.stadium.address" /></td>
					<td align="center"><s:property value="#session.stadium.orderTel" /></td>
					<td align="center"><s:property value="#session.stadium.contactMan" /></td>
					<td align="center"><s:property value="#session.stadium.email" /></td>
					<td align="center"><s:property value="#session.stadium.period" /></td>
					<td align="center"><s:property value="#session.stadium.openTime" /></td>
					<td align="center"><s:property value="#session.stadium.closeTime" /></td>
					<td align="center"><s:property value="#session.stadium.intVal" /></td> 
					<td align="center"><s:property value="#session.stadium.img" /></td>
					<td align="center"><s:property value="#session.stadium.suggest" /></td>
				</tr>
		</tbody>
	</table>
	<br/>
	<a href="stadium_findById.action?stadiumId=<s:property value="#session.stadium.stadiumId"/>">
		修改
	</a>
  </body>
</html>
