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
  
  
  
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/css/bootstrap1.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />	
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
<!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">
			<p class="header-para">Welcome To Our Club！</p>
			    <ul class="sign">
					<li ><a href="${pageContext.request.contextPath}/jsp/user/login.jsp" >登录</a></li>
					<li><a href="${pageContext.request.contextPath}/jsp/user/register.jsp">注册</a></li>	
				</ul>
			</div>
			<div class="clearfix"> </div>
	    </div>
	    
<div class="header-bottom-top">
		<div class="container">
			 
			<div class="clearfix"> </div>
			<div class="header-bottom">			
				<div class="logo">
					<a href="index.html"><img src="${pageContext.request.contextPath}/img/log.png" alt=" " /></a>
				</div>
				<div class="top-nav">
					<ul>
						<li class="active" ><a href="${pageContext.request.contextPath}/Main.jsp" class="scroll"> 首页</a></li>
						<li><a href="team_order.action" class="scroll">团队订场</a></li>
					    <li><a href="jiFen.html" class="scroll">积分榜 </a></li>
					    <li class="dropdown">
					      <i class="glyphicon glyphicon-user"></i>
				        <li class="dropdown"><a href="percenter.html" >个人中心</a>
				           
			            </li>
			            
					</ul>
					<!--script-->
			 
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	    </div>
	</div>
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>

		<!--banner-->
		 <div class="slider">
			<ul class="rslides" id="slider2">
			  <li><a href="#"><img src="${pageContext.request.contextPath}/img/bb.jpg" alt="">
			  <div class="banner">
			  <span class=" matter "> </span>
			  </div>
			  </a></li>
			  <li><a href="#"><img src="${pageContext.request.contextPath}/img/ban.jpg" alt="">
			   <div class="banner">
			  <span class=" matter"> </span>
			  </div>
			   </a></li>
			  <li><a href="#"><img src="${pageContext.request.contextPath}/img/bb.jpg" alt="">
				<div class="banner">
			  <span class="matter "> </span>
			  </div>
			  </a></li>
			   
			  </a></li>
			</ul>
		</div>
		
		<!--content-->
		<div class="content">
		    <div class="content-app-up">
			<div class="container">
			<span class="line"> </span>
			<div class="content-left">
	    		<div class="div2">
	    	       <img src="${pageContext.request.contextPath}/img/wel.jpg" />
	    	    </div>
	    	    <div class="box2">
	    	      <span>欢迎加入约球吧，在这里，你可以同我们一起听心跳的声音！在这里有一种感情可以分享，那就是足球。</span>
	    	   </div>
	    	</div>
	    	<div class="content-right">
	    		<div class="address">
     		       <img src="${pageContext.request.contextPath}/img/add.jpg" />
                                               长沙市庆达足球俱乐部               
     	        </div>
     	
                <div class="createtime">
                                             成立时间:2015年9月11日                       
                </div>
        
                <div class="title">
                   <img src="${pageContext.request.contextPath}/img/lo.jpg" />
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
			<div class="content-app-up">
			<div class="container">
			<span class="line"> </span> 
			<h3>球馆场地</h3>
						<div class="content-from">
							<div class="col-md-4 from-grid ">
								<img class="img-responsive left-pic" src="${pageContext.request.contextPath}/img/pic1.jpg" alt=" " />
								<p>一号场地</p>								
							</div>
							<div class="col-md-4 from-grid ">
								<img class="img-responsive left-pic" src="${pageContext.request.contextPath}/img/pic2.jpg" alt=" " />
								<p>二号场地</p>								
							</div>
							<div class="col-md-4 from-grid ">
								<img class="img-responsive left-pic" src="${pageContext.request.contextPath}/img/pic3.jpg" alt=" " />
								<p>三号场地</p>								
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
			 
		    </div>
			 
		<!---->		
	</div>
	<!--footer-->
	<div class="footer">
		<div class="container">
		
			<div class="foter-bottom">			
				 <p class="footer-grid">#约球吧# 等你来battle </p>
            </div>
        </div>
    </div>  
     <script src="${pageContext.request.contextPath}/js/responsiveslides.min.js"></script>	   

  </body>
</html>
