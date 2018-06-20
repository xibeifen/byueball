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
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/teamorder.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/head-bottom-top.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/yuyue.css" />
	
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
		<div class="center">
			<h1>庆达足球公园</h1>
			<s:form action="order_findOrder" method="post" namespace="/" theme="simple">
			<table class="table1">
			    <tr  >
                      
                       <th >场地</th>
                       <td id="venueType"></td>
              
                       
                       <th>日期</th>
                       <td>
                       	<select name="orDate" >
    					      <option>---请选择---</option>
	    					  <option><s:property value="#request.dateList[0]"/> </option>
	    					  <option><s:property value="#request.dateList[1]"/> </option>
	    					  <option><s:property value="#request.dateList[2]"/> </option>
	    					  <option><s:property value="#request.dateList[3]"/> </option>
	    					  <option><s:property value="#request.dateList[4]"/> </option>
	    					  <option><s:property value="#request.dateList[5]"/> </option>
	    					  <option><s:property value="#request.dateList[6]"/> </option>
    					  </select>
		              </td>
		              
		              <th>
		              	<input type="submit" value="查询" class="btn btn-primary btn-lg"/>
		              </th>
                </tr>
            </table>
            </s:form>
           
           
            <table class="table2" >
      	         <tr  >
      	         	<th><label>时刻</label></th>
        	        
        	        <th><label>队伍1</label></th>
        	       
        	        <th><label>队伍2</label></th>
        	        <th>
        	        	<label>操作</label>
        	        </th>
        	       <!--  <th><input type="button"   value="预约" data-toggle="modal" data-target="#yuyueModal" class="btn btn-primary btn-lg"/></th>
      	         --> 
      	     <s:iterator value="orderList" var="o">
				<tr>
					<td align="center"><s:property value="#o.orderTime" /></td>
					<td align="center"><s:property value="#o.teamOne.name" /></td>
					<td align="center"><s:property value="#o.teamTwo.name" /></td>
					<td>
					<a href="order_addOrder.action">
				                  团队预约
	             	</a>
					<!-- <input type="button" value="预约" data-toggle="modal" data-target="#yuyueModal" class="btn btn-primary btn-lg"/>
					 --></td>
				</tr>
			</s:iterator>
            </table>
   </div>
 <%-- 
 
 <!--添加模态框-->
 <form action="order_saveOrder" method="post" id="teamForm">
	<div id="yuyueModal" class="modal fade yuyueModal" >
			<div class="modal-header">
                <a class="close" data-dismiss="modal">x</a>
                <h3>提交预约</h3>
            </div>
            <div class="modal-body">
            	<!-- <form> -->
            		
            		<div class="list1">
            			<label>场&nbsp;&nbsp;地</label>
            			<input type="text" class="form-control" /> 
            			<span id="venueId"></span>
            		</div>
            		<div class="list1">
            			<label>日&nbsp;&nbsp;期</label>
            			<input type="text" class="form-control" /> 
            		</div>
            		<div class="list1">
            			<label>时&nbsp;&nbsp;间</label>
            			<!-- <input type="text" class="form-control" /> -->
            			<select name="orderTime" >
    					      <option value="0">---请选择---</option>
	    					  <option value="9点-11点">9点-11点</option>
	    					  <option value="13点-15点">13点-15点</option>
	    					  <option value="16点-18点">16点-18点</option>
    					  </select>
            		</div>
            		<div class="sub">
            		<!--<s:a href="Yes?id1=%{#request.atte.id}"><input type="button" value="提交" class="btn btn-primary"/></s:a>
            		 -->	 <button class="btn btn-primary" >提交</button>
            			<button class="btn btn-default" data-dismiss="modal">取消</button>
            		</div>
            	<!-- </form> -->
            </div>
   </div>
   </form> --%>
         		
 <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.js" ></script>
  </body>
</html>
