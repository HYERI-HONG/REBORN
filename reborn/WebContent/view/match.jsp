<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="model.DogInfoVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>리본(REBORN)</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style>
body {/* font-weight:bold;  */text-decoration:none; background-image:url('/reborn/images/matchup_bg.jpg'); /* opacity: 0.8; */}
.navbar{ background-color:#f2f2f2; margin-bottom:0px; /* opacity:0.5; */}
header { height : 100px; background-color: rgba(0, 0, 0, 0.8); position: relative; z-index: 1; }
#logo img{ /* padding-top:10px; */ width:70%; height:auto }
#main_menu a{ text-decoration:none; color:white; padding-right:20px; font-size:20px; }
.result { width:100%; height:100%; }
.match img{ border-radius:15px; padding-bottom:10px; }
#DogInfo{ text-align:right; padding-bottom:20px; padding-right:20px; }
#DogInfo a{ font-size:20px; color:white; font-weight:500; text-decoration:none; }
#DogInfo a:hover{ color:orange; }
.cover {border-radius: 50px; background: #444444; margin: 80px auto; padding: 23px 50px; width: 88%; height: auto; opacity: 0.8;}
footer{ background-color: rgba(0, 0, 0, 0.8); }
</style>
</head>
<body>
<!-- header -->
<div class="header-wrapper">
<header id="header">
   <div class="stuck-nav">
      <div class="container" >
         <div class="row">
            <div class="pull-left col-xs-12 col-md-5 col-lg-4">
               <div class="text-center" id="logo" style="opacity:1.0!important">
               <!-- logo start -->
                  <a href=index.jsp><img src="/reborn/images/reborn_logo.png"></a>
               <!-- logo end -->
               </div>
            </div>   
            <div class="pull-right col-md-7 col-lg-8 hidden-xs">
               <div class="text-center" id="main_menu" style="padding-top:40px; padding-left:120px">
                  <a href="/reborn/view/index.jsp">Home</a>
					<a href="/reborn/view/dogting.jsp">Match up</a>
					<a href="/reborn/view/adoption.jsp">Adoption</a>
					<a href="/reborn/shelters?city=all&page=1">Shelters</a>
               </div>   
            </div>
         </div>
      </div>
   </div>
</header>
<!-- end:header -->
</div>
<section class="result">
<div class ="container">
	<div class="cover">
		<% DogInfoVO m1 = (DogInfoVO)request.getAttribute("m1");
		   DogInfoVO m2 = (DogInfoVO)request.getAttribute("m2");
		   DogInfoVO m3 = (DogInfoVO)request.getAttribute("m3");
		   
		   if (m1 != null && m2 != null && m3 != null) {
		%>
	<div class="match">
		<div class="row" id="first" style="padding-top:20px; padding-bottom:30px;">
			<div class="col-md-1 col-lg-1 col-sm-2 col-xs-2" style="margin-left:-15px;"></div>
			<div class="col-md-3 col-lg-3 col-sm-10 col-xs-10">
				<img src="<%=m1.getImg()%>" style="width:220px; height:180px;">
			</div>
			<div class="col-md-8">
			<br>
			<p style="color:white; font-size: 25px; font-weight:bold;">견종  &nbsp;:&nbsp; <%=m1.getName() %>&nbsp;&nbsp; <sub><%=m1.getEname()%></sub></p>
			<p style="color:white; font-size: 15px;">특징 : <%=m1.getContent() %></p>
			</div>
		</div>
		<div class="row" style="padding-top:20px; padding-bottom:30px;">
			<div class="col-md-1 col-lg-1 col-sm-2 col-xs-2" style="margin-left:-15px;"></div>
			<div class="col-md-3 col-lg-3 col-sm-10 col-xs-10">
				<img src="<%=m2.getImg()%>" style="width:220px; height:180px;">
			</div>
			<div class="col-md-8">
			<br>
			<p style="color:white; font-size: 25px; font-weight:bold;">견종  &nbsp;:&nbsp; <%=m2.getName() %>&nbsp;&nbsp; <sub><%=m2.getEname()%></sub></p>
			<p style="color:white; font-size: 15px;">특징 : <%=m2.getContent() %></p>
			</div>
		</div>
		<div class="row" style="padding-top:20px; padding-bottom:30px;">
			<div class="col-md-1 col-lg-1 col-sm-2 col-xs-2" style="margin-left:-15px;"></div>
			<div class="col-md-3 col-lg-3 col-sm-10 col-xs-10">
				<img src="<%=m3.getImg()%>" style="width:220px; height:180px;">
			</div>
			<div class="col-md-8">
			<br>
			<p style="color:white; font-size: 25px; font-weight:bold;">견종  &nbsp;:&nbsp; <%=m3.getName() %>&nbsp;&nbsp; <sub><%=m3.getEname()%></sub></p>
			<p style="color:white; font-size: 15px;">특징 : <%=m3.getContent() %></p>
			</div>
		</div>
	</div>
	<%} %>
	</div>
</div>
</section>
<!-- footer -->
<div class="footer-wrapper">
   <footer id="footer">
      <div class="container" style="text-align:center;">
         <p style="margin-left: 20px; margin-top:40px;">
            <h4 style="color:white"><br>reborn Pte. Ltd.</h4><br><br></p>

         <div class="row" id="rowstyle" style="color: white;">
            <div class="col-md-6"  style="display: inline-block;">
               <img src="/reborn/images/Euna_icon.png" width="15%" height="15%">
               <!-- <h4>Euna Lee</h4> -->
               <p>
                  Project Manager_Coder<br> Modeling of MVC & Servlet & View
               </p>
            </div>
            <div class="col-md-6" style="display: inline-block;">
               <img src="/reborn/images/Hyeri_icon.png" width="15%" height="15%">
               <!-- <h4>Hyeri Hong</h4> -->
               <p>
                  Planner_organize and analyze data,<br> design, documentation
               </p>
            </div>
         </div>

         <hr style = "opacity:0.8; width:60% "><br>
         <p style="color:white; margin-left: 20px; margin-bottom:20px;"> Copyright © Footer 2017. All right reserved.<br>
                                                      © 2017.09.01 – 2017.11.30<br>
                                                      Built with our knowledge<br>
                                                      Made on our labtop<br>
                                                      Hosted by Euna, Hyeri<br><br>      
         </p>
      </div>
   </footer>
</div>
</body>
</html>