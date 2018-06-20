<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="${pageContext.request.contextPath}">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/my.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/yanzheng.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            loadSelect("003", "venueId", "venueId.dictId",null);
            //loadSelect("005", "startTimea", "startTimea",null);
        });
    </script>
    
      <link rel="stylesheet" href="${pageContext.request.contextPath }/css/teamorder.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/head-bottom-top.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/yuyue.css" />
		
		 <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.js" ></script>
  
</head>
<body>
 <div class="header-bottom">
		        <div class="logo">
					<a href="index.html"><img src="${pageContext.request.contextPath }/img/log.png" alt=" " /></a>
				</div>
		        <div class="top-nav">
					<ul>
						<li><a href="${pageContext.request.contextPath}/jsp/user/loginMain.jsp" > 首页</a></li>
						<li><a href="team_order.action" >团队订场</a></li>
					    <li><a href="jiFen.html" >积分榜 </a></li>
					    <li><a href="percenter.html" >个人中心</a>
					</ul>
				        
	            </div>
	    </div>
	<form action="order_saveOrder" method="post" id="teamForm">
		      <h1 style="height: 80px;text-align: center;">预约比赛</h1>
					
				<%-- <s:hidden name="teamOne.teamId" value="#session.existTeam.teamId"></s:hidden> --%>      
				<input style="display: none;" name="teamOne.teamId" value="<s:property value="#session.existTeam.teamId" />">    			 
					<%-- 队伍id:<s:property value="#session.existTeam.teamId" /> --%>
				<table class="a">
			    <tr class="place" style="height:50px;">
                       <th class="first"></th>
                        <tr>
		        		<td>场地号：<span id="venueId"></span></td>
						 </tr>      
						  <%-- <tr>
		        		<td>时间段：<span id="startTimea"></span></td>
						 </tr> --%>      
					   <tr>
		        		<td>时间段：<select name="orderTime" >
    					      <option value="0">---请选择---</option>
	    					  <option value="9点-11点">9点-11点</option>
	    					  <option value="13点-15点">13点-15点</option>
	    					  <option value="16点-18点">16点-18点</option>
    					  </select>
		        		
		        		
		        		</td>
						 </tr>  
              
                <tr class="date" style="height:50px;">
                       <th class="time"></th>
    					  <th>请选择日期</th>
    					      <th><select name="orDate" >
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
		    
		            <!--  <input value="提交注册申请" type="submit" onclick="return checkForm();">  -->
		           <input value="确认订单" type="submit" >
		</form>
    </body>
</html>