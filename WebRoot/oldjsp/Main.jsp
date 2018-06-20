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
    <title>用户首页</title>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1"> 
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/header.js" ></script>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js" ></script>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/js/slide.js" ></script>
  
  
  
<link href="css/index.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/bootstrap1.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Football Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<!--//fonts-->

 <script>
    // You can also use "$(window).load(function() {"
    $(function () {
      $("#slider2").responsiveSlides({
        auto: true,
        pager: true,
        speed: 300,
        namespace: "callbacks",
      });
    });
  </script>
  
 <script type="text/javascript">  
        function login1body(){  
            debugger;  
            var parentWin = window.opener ;  
            //获取父窗口 一个带Id 的元素。  
            var body = parentWin.document.getElementById('body');  
            document.getElementById("indexbody").innerHTML = body.innerHTML;  
        }  
        window.onload=login1body;  
    </script> 
</head>
  
  </head>
  
  <body>
		<div class="top">
			<img src="${pageContext.request.contextPath}/images/img/top.png"  />	
		           欢迎您：<s:property value="#session.existTeam.capName" />	        
			<ul class="top-nav">
				<li><a href="${pageContext.request.contextPath}/jsp/user/login.jsp" id="login">登录队伍</a></li>
				<li><a href="${pageContext.request.contextPath}/jsp/user/register.jsp" id="regist">注册队伍</a></li>
			</ul>
			
	    </div>
	    
	    <div id="header">
	    	<img class="p" src=""  id="img1" />
	    	<div id="in1" onmousemove="changeImg4()">4</div>  
            <div id="in2" onmousemove="changeImg3()">3</div>  
            <div id="in3" onmousemove="changeImg2()">2</div>  
            <div id="in4" onmousemove="changeImg1()">1</div>  
	    </div>
	    
	    <div class="logo-div">
	    	<ul class="logo">
	    	 <li><a href="team_order.action" id="team-setting">团队订场</a>
	    		<%--  <li><a href="team_order.action?teamId=<s:property value="#session.existTeam.teamId"/>" id="team-setting">团队订场</a> --%>
	    		 <li><a href="myorders.html" id="my-orders">我的订单</a>
	    		 <li><a href="team_findById.action?teamId=<s:property value="#session.existTeam.teamId"/>" id="my-teams">我的队伍</a>
	    		 <li><a href="" id="scoreboard">积分榜</a>
	    		 <li><a href="team_f.action?teamId=<s:property value="#session.existTeam.teamId"/>" id="modify">修改手机</a>
	    		 <li><a href="mynews.html" id="my-news">我的消息</a>
	    	</ul>
	    </div>
	    <div class="content">
	    	<div class="content-left">
	    		<div class="div2">
	    	       <img src="${pageContext.request.contextPath}/images/img/wel.jpg" />
	    	    </div>
	    	    <div class="box2">
	    	      <span>欢迎加入约球吧，在这里，你可以同我们一起听心跳的声音！在这里有一种感情可以分享，那就是足球。</span>
	    	   </div>
	    	</div>
	    	<div class="content-right">
	    		<div class="address">
     		       <img src="${pageContext.request.contextPath}/images/img/add.jpg" />
                                               长沙市庆达足球俱乐部               
     	        </div>
     	
                <div class="createtime">
                                             成立时间:2015年9月11日                       
                </div>
        
                <div class="title">
                   <img src="${pageContext.request.contextPath}/images/img/lo.jpg" />
                                                     俱乐部联系人
                </div>
                <div class="organization">
                   <ul>
                     <li>
                   
                       <span>Jerry 杰瑞</span>
                       <span class="tel">13988817401</span>
                     </li>
                   </ul>
                </div>
        
	    	</div>
	    </div>
	    <div class="tableinfo">
	    	<div class="left">
	    		<h1>本周场地信息表</h1>
	    	</div>
	    	<div class="midd">
	    	    <div class="line">
                   <input id="button" value="一号场地 " type="button"  />
                </div>
                <div class="line">
                   <input id="button" value="二号场地 " type="button"  />
                </div>
                <div class="line">
                   <input id="button" value="三号场地 " type="button"  />
                </div>
            </div>
	    	<div class="right">
	                <table border="1" cellspacing="0" cellpadding="0"  height="300px" width="930px">
                    <tr class="date">
                       <th class="first"></th>
                       <th>6月6日 </th>
                       <th>6月7日 </th>
                       <th>6月8日 </th>
                       <th>6月9日</th>
                       <th>6月10日 </th>
                       <th>6月11日 </th>
                       <th>6月12日 </th>
                    </tr>
                    <tr class="tr">
                       <td >9点到11点</td>
                       <td> </td>
                       <td> </td>
                       <td> </td>
                       <td> </td>
                       <td> </td>
                       <td> </td>
                       <td> </td>
                    </tr> 
                    
                    
                    <tr class="tr">
                    	<td >
                    	13点到15点	
                       </td>
                       <td> </td>
                       <td> </td>
                       <td> </td>
                       <td> </td>
                       <td> </td>
                       <td> </td>
                       <td> </td>
                    </tr>
                    
                    <tr class="tr">
                    	<td >
                    	15点到17点	
                        </td>
                        <td> </td>
                        <td> </td>
                        <td> </td>
                        <td> </td>
                        <td> </td>
                        <td> </td>
                        <td> </td>
                    </tr>
              </table>
	    	</div>
	    </div>
	  
	    	
          <div class="foot">
          	
	       <div class="ck-slide"> 
               <ul class="ck-slide-wrapper">
                  <li>
                    <a href="http://createthink.net"><img src="${pageContext.request.contextPath}/images/img/2.1.jpg" alt="" style="width:800px;"></a>
                  </li>
                  <li style="display:none">
                   <a href="http://www.oschina.net"><img src="${pageContext.request.contextPath}/images/img/1.1.jpg" alt="" style="width:800px;"></a>
                  </li>
                  <li style="display:none">
                     <a href="javascript:;"><img src="${pageContext.request.contextPath}/images/img/3.1.jpg" alt="" style="width:800px;"></a>
                  </li>
             
              </ul>
                 <a href="javascript:;" class="ctrl-slide ck-prev">上一张</a>
                  <a href="javascript:;" class="ctrl-slide ck-next">下一张</a>
               <div class="ck-slidebox">
                  <div class="slideWrap">
                      <ul class="dot-wrap">
                         <li class="current"><em>1</em></li>
                         <li><em>2</em></li>
                         <li><em>3</em></li>
                    
                      </ul>
                  </div>
               </div>
          </div>
        </div>
    

	  <script>
        $('.ck-slide').ckSlide({
            autoPlay:true
            /*dir:"x"*/
        });
    </script>
  </body>
</html>
