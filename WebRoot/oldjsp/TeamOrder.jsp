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
		<title>团队订场界面</title>
		<link rel="stylesheet" href="css/order.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/orderDate.js"></script>
		<link href="${pageContext.request.contextPath}">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/my.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            loadSelect("003", "venueType", "venueId.dictId",null);
        });
    </script>
  </head>

  <body>
        <div id="top">
			庆达足球公园
		</div>	
		<div class="center">
		队长姓名:<s:property value="#session.existTeam.capName" />	   
		<s:form id="saveForm" action="order_findOrder" method="post" namespace="/" theme="simple">
		<s:hidden name="teamId" value="#session.existTeam.teamId"></s:hidden> 
		
			<table class="a">
			    <tr class="place" style="height:50px;">
                       <th class="first"></th>
                        <tr>
		        		<td>场地类型：</td>
					    <td id="venueType"></td>
						 </tr>                   
              
                <tr class="date" style="height:50px;">
                       <th class="time"></th>
                       <th>时间</th>
    					  <th>请选择日期</th>
    					  <th><select name="orDate" ><!-- headerValue="---请选择---" -->
    					      <option>---请选择---</option>
	    					  <option><s:property value="#request.dateList[0]"/> </option>
	    					  <option><s:property value="#request.dateList[1]"/> </option>
	    					  <option><s:property value="#request.dateList[2]"/> </option>
	    					  <option><s:property value="#request.dateList[3]"/> </option>
	    					  <option><s:property value="#request.dateList[4]"/> </option>
	    					  <option><s:property value="#request.dateList[5]"/> </option>
	    					  <option><s:property value="#request.dateList[6]"/> </option>
    					  </select></th>
                      </tr>
            </table>
             <input value="查询" type="submit">
              </s:form>
              
       <table cellspacing="0" border="1">
          <thead><tr>
                  <td> 比赛时间</td>
           </tr></thead>
          <tbody>   <tr><td>9点-11点</td></tr>
          			<tr><td>1点-3点</td></tr>
          			<tr><td>4点-6点</td></tr>
          </tbody>
       </table>       
              
       <table cellspacing="0" border="1" class="table1">
		<thead>
			<tr>
				<!-- <th width="200">比赛时间</th> -->
				<th width="300">队伍一</th>
				<th width="300">队伍二</th>
				<th width="200">预约</th>
			</tr>
		 </thead>
		 	<tbody>
			<s:iterator value="orderList" var="o">
				<tr>
					<td align="center"><s:property value="#o.orderTime" /></td>
					<td align="center"><s:property value="#o.teamOne.name" /></td>
					<td align="center"><s:property value="#o.teamTwo.name" /></td>
					<td align="center">
					    <a href="order_addOrder.action?teamId=<s:property value="#session.existTeam.teamId"/>&startTime=<s:property value="#o.startTime" />">
					       预约
					    </a>
					</td>
				</tr>
			</s:iterator>
		    </tbody>
		</table>     
		</div>
		<a href="order_addOrder.action">
				团队预约
		</a>
  </body>
</html>
