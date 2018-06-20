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
		<title>修改队伍信息</title>
		<link rel="stylesheet" href="css/modifyteam.css" />
  </head>
  
  <body>
    <div class="main">
			<h1>修改队伍信息</h1>
	<!-- action对应一个action标签，id对应提交时的对应关系 -->
	<s:form id="saveForm" action="team_edit" method="post" namespace="/" theme="simple">
		<s:hidden name="teamId" value="%{model.teamId}"></s:hidden>
			<div class="detail">
				<div class="line">
				  <h3>队伍名：</h3>
				  <s:textfield value="%{model.name}" name="name" />
				</div>
				<div class="line">
				   <h3>年龄段：</h3>
			        <form >
			            <select name="age" >
			               <option value="1" selected="selected">20岁以下</option>
			               <option value="2" >20-30岁</option>
			               <option value="3" >30-40岁</option>
			               <option value="4" >40-50岁</option>
			               <option value="4" >50岁以上</option>
		                </select>
		              </form>
				  
				</div>
		 	<%-- 	这里html出错了
		        <div class="line">  
					<h3>水平:</h3>
				   	<form >
			            <select name="level >
			               <option value="1" selected="selected">较弱</option>
			               <option value="2" >一般</option>
			               <option value="3" >较强</option>
			               <option value="4" >专业</option>
		                </select>
		              </form>
				</div>	 --%> 
	
			<div class="link">
				<!-- <a href="modifysuccess.html">点击修改</a> -->
				 <a href="javascript:document.getElementById('saveForm').submit()">点击修改</a>
			</div>
			</div>
</s:form>
		</div>
  </body>
</html>

