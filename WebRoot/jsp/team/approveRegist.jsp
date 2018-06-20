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
</head>
<body>
	<table border="0" width="900px">
		<tr>
			<td align="center" style="font-size: 24px; color: #666">同意注册申请</td>
		</tr>
	</table>
	<br />
	<form action="team_approveTeam" method="post">
	<s:hidden name="teamId" value="%{model.teamId}"></s:hidden>
	<s:hidden name="teamState" value="审核通过"></s:hidden>
	<table>
	             <tr>
	             <td>队伍名:</td>
	             <td><s:textfield name="name" value="%{model.name}" /></td>
	             </tr>
	             <tr>
	             <td>平均年龄:</td>
	             <td><s:textfield name="aveAge.dictId" value="%{model.aveAge.dictItemName}" /></td>
	             </tr>
	             <tr>
	             <td>平均年龄:</td>
	             <td><s:textfield name="aveLevel.dictId" value="%{model.aveLevel.dictItemName}" /></td>
				 </tr>
				 <tr>
	             <td>队长姓名:</td>
	             <td><s:textfield name="capName" value="%{model.capName}" /></td>
	             </tr>
	             <tr>
	             <td>照片:</td>
	             <td><s:textfield name="img" value="%{model.img}" /></td>
	             </tr>
	</table><br/>
	<input type="submit" value="同意" class="btn btn-primary btn-sm"/>
	</form>
</body>
</html>