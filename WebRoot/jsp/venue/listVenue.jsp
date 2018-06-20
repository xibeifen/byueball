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
    
    <title>球场信息页面</title>
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
			 	<th width="300">球场名</th>
				<th width="300">球馆</th>
				<th width="300">场地类型</th>
				<th width="300">场地状态</th>
				<th width="500">图片</th>
				<th width="300">修改</th>
			</tr>
		</thead>
		<tbody> 
	<%-- 	<s:debug>></s:debug> --%>
			<s:iterator value="venueList" var="v">
				<tr>
					<td align="center"><s:property value="#v.name" /></td>
					<td align="center"><s:property value="#v.stadium" /></td>
					<td align="center"><s:property value="#v.venueType" /></td>
					<td align="center"><s:property value="#v.state" /></td>
					<td align="center"><s:property value="#v.img" /></td>
					<td align="center">
					<a href="venue_findById.action?venueId=<s:property value="#v.venueId"/>">
		                                           修改	</a></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
	<br/>

  </body>
</html>
