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
	<table border="0" width="900px">
		<tr>
			<td align="center" style="font-size: 24px; color: #666">队伍管理</td>
		</tr>
		<tr>
			<td align="right">
			      <a href="Team_goAddTeam.action">添加</a>
			</td>
		</tr>
	</table>
	<br />
	<table cellspacing="0" border="1" class="table1">
		<thead>
			<tr>
				<th width="200">队伍名</th>
				<th width="300">平均年龄</th>
				<th width="300">平均水平</th>
				<th width="200">队长姓名</th>
				<th width="200">队长电话</th>
				<th width="200">缺席次数</th>
				<th width="200">信誉点</th>
				<th width="100">图标</th>
				<th width="100">照片</th>
				<th width="300">审核状态</th>
				<th width="300">修改</th>
				<th width="300">删除</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="list" var="t">
				<tr>
					<td align="center"><s:property value="#t.name" /></td>
					<td align="center"><s:property value="#t.aveAge.dictItemName" /></td>
					<td align="center"><s:property value="#t.aveLevel.dictItemName" /></td>
					<td align="center"><s:property value="#t.capName" /></td>
					<td align="center"><s:property value="#t.capTel" /></td>
					<td align="center"><s:property value="#t.absence" /></td>
					<td align="center"><s:property value="#t.credits" /></td>
					<td align="center"><s:property value="#t.logo" /></td>
					<td align="center"><s:property value="#t.img" /></td>
					<td align="center"><s:property value="#t.checkState.dictItemName" /></td>
					<td align="center">
					    <a href="team_findById.action?teamId=<s:property value="#t.teamId"/>">
					       <img src="${pageContext.request.contextPath }/images/mark.png" />
					    </a>
					</td>
					<td align="center">
					    <a href="team_delete.action?teamId=<s:property value="#t.teamId"/>">
					       <img src="${pageContext.request.contextPath }/images/trash.gif" />
					    </a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
	<br/>
		<table border="0" cellspacing="0" cellpadding="0" width="900px">
		<tr>
			<td align="right">
			<span>
			     第<s:property value="currPage" />/<s:property value="totalPage" />页
			</span>
			&nbsp;&nbsp; 
			<span>
			    总记录数：<s:property value="totalCount" />&nbsp;&nbsp;
			    每页显示:<s:property value="pageSize" /></span>&nbsp;&nbsp; 
			<span>
			   <s:if test="currPage != 1">
					<a href="team_findAll.action?currPage=1">[首页]</a>&nbsp;&nbsp;
                    <a href="team_findAll.action?currPage=<s:property value="currPage-1"/>">[上一页]</a>&nbsp;&nbsp;
               </s:if> 
               <s:if test="currPage != totalPage">
					<a href="team_findAll.action?currPage=<s:property value="currPage+1"/>">[下一页]</a>&nbsp;&nbsp;
                    <a href="team_findAll.action?currPage=<s:property value="totalPage"/>">[尾页] <%-- <s:property value="totalPage"/>  --%></a>&nbsp;&nbsp;
               </s:if> 
            </span>
            </td>
		</tr>
	</table>
</body>
</html>