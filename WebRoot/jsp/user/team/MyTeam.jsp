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
		<title>我的队伍</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/myteam.css" />

  </head>
  
  <body>
  		<%-- <s:debug></s:debug> --%>
		<div class="main">
			<h1>我的队伍</h1>
			<div class="detail">
				<div class="line">
				<!-- 这里显示不应该用文本框，直接输出值就可以了，以后记得改，这句话没删就是还没改哦 -->
				  <h3>队名：</h3><s:textfield value="%{model.name}" name="name"/>
				</div>
				<div class="line">
				   <h3>年龄段：</h3>
				   <form >
			            <select name="age" >
			               <option value="1"  selected="selected">20岁以下</option>
			               <option value="2" >20-30岁</option>
			               <option value="3" >30-40岁</option>
			               <option value="4" >40-50岁</option>
			               <option value="4" >50岁以上</option>
		                </select>
		           </form>
				</div>
				<div class="line">
				    <h3>整体水平：</h3>
				    <form >
			            <select name="level" >
			                <option value="1" selected="selected">较弱</option>
			                <option value="2">一般</option>
			                <option value="3">较强</option>
			                <option value="4">专业</option>
		                </select>
		              </form>
				</div>
				<div class="line">
				  <h3>胜率：</h3>
				  <input name="rate" type="text" /><br />
				</div>
				<div class="line">
				  <h3>积分：</h3><s:textfield value="%{model. }" name=" "/>
				</div>
				<div class="line">
				  <h3>信誉：</h3><s:textfield value="%{model. }" name=" "/>
				</div>
			</div>
			<div class="link">
				<a href="team_findAndEdit.action?teamId=<s:property value="%{model.teamId}"/>">修改信息</a>
			</div>
		</div>
  </body>
</html>
