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
<link href="${pageContext.request.contextPath }/css/dtree.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/dtree.js"></script>
</head>

<body bgColor="#DDF0FB" leftMargin="0" topMargin="0" marginwidth="0" marginheight="0">
	<table width="90%" border="0" cellspacing="1" cellpadding="2" align="center">
		<div class="dtree">		     
			<script type="text/javascript">
				d = new dTree('d');
				d.add('01', '-1', '约球吧');
				d.add('0101', '01', '队伍管理');
				d.add('010101', '0101', '队伍注册申请', 'team_registTeam.action','', 'right');
				d.add('010102', '0101', '所有队伍信息', 'team_findAll.action','', 'right');
				d.add('0102', '01', '场馆管理');
				d.add('010101', '0102', '球馆', 'stadium_findAll.action','', 'right');
				d.add('010102', '0102', '球场', 'venue_findInfo.action','', 'right');
				d.add('0103', '01', '订单管理');
				d.add('010101', '0103', '电话预定', 'department_findAll.action','', 'right');
				d.add('010102', '0103', '所有订单', 'department_findAll.action','', 'right');
				d.add('0104', '01', '比赛管理');
				d.add('010101', '0104', '积分榜');
				d.add('010102', '0104', '判分');
				d.add('0105', '01', '个人中心');
				d.add('010101', '0105', '修改密码');
				document.write(d);
			</script>
		</div>
	</table>
</body>
</html>
