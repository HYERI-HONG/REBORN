<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>리본(REBORN)</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<style>
body {/* font-weight:bold; */ text-decoration:none; background-color: rgba(0, 0, 0, 1); /* background-image:url('/reborn/images/dog_survey.jpg'); */  /* opacity: 0.8; */}
.navbar{background-color:#f2f2f2; margin-bottom:0px; /* opacity:0.5; */}
header { height : 100px; background-color: rgba(0, 0, 0, 0.8); /* opacity:0.6; */ position: relative; z-index: 1; }
#logo img{ /* padding-top:10px; */ width:70%; height:auto }
#main_menu a{ text-decoration:none; color:white; padding-right:20px; font-size:20px; }
.item{height:35em;}
.main_slider .item{ background-repeat: no-repeat; background-size:100% 100%; background-position:center; }
.main_menu { max-width:100%; height:auto; }
.cover { border-radius: 50px; background: #666666; margin: 80px auto; padding: 23px 50px; width: auto; height: auto; opacity: 0.8; }
.survey_title{ color:orange; text-align:center; /* font-weight:bold; */}
.btn { font-weight:bold; border-radius: 50px; }
#adoptionPS{text-align:right; padding-bottom:20px; padding-right:20px; font-weight:bold;}
#adoptionPS a{ font-size:20px; color:orange; font-weight:bold; text-decoration:none;}
footer{ background-color: rgba(0, 0, 0, 0.8); }
table { width: 100%; border-top: 2px dashed white; border-collapse: collapse; }
td { border-bottom: 2px dashed white; padding: 10px; }
/* img { width:60%; height:15%; } */
#adoption{/* text-align:left;  */padding-top:30px; padding-left:20px; float:left; }
#adoption a{ font-size:20px; color:orange; font-weight:bold; text-decoration:none;}
#adoptionSel{text-align:right; padding-top:30px; padding-right:25px;}
#adoptionSel a{ font-size:20px; color:orange; font-weight:bold; text-decoration:none;}
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

<!-- Slider -->
<section class="main_slider">
	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
		<div class="item active" style="background-image:url(/reborn/images/adoption_bgt.jpg);">
		<div class ="text" style="padding:5px 2px 0 30px; color:white;">
		<h2 style="font-weight:bold;">유기견 입양안내<br></h2>
		<h3>유기견 입양 절차를 확인해보세요.<br></h3>
		<h3>무엇보다도 중요한 절차는 새로운 가족을 맞이하는 마음가짐입니다.<br></h3>
		</div>
		</div>
	</div>
</section>

<div class="container" style="padding-top:30px; color:white;">
<h2 style="font-weight:bold;">유기견 입양 절차 </h2><br>
<table id="table">
	<tr>
	<td><img src="/reborn/images/adoption_register.png"></td>
	<td><h3 style="color:orange; font-weight:bold;">&nbsp;&nbsp; 1. 입양 신청 접수</h3><br>
		<h4>&nbsp;&nbsp;&nbsp; 유기견 센터에 미리 전화나 온라인으로 예약을 하고 직접 센터에 방문 후, 직원의 안내에 따라 입양할 유기견을 선택합니다.</h4></td>
	</tr>
	<tr>
	<td><img src="/reborn/images/adoption_consult.png"></td>
	<td><h3 style="color:orange; font-weight:bold;">&nbsp;&nbsp; 2. 입양 상담</h3><br>
		<h4>&nbsp;&nbsp;&nbsp; 센터의 전문 상담사와 상담을 통해 유기견의 상태, 예비 반려인의 자격 요건을 검토하고 최종 입양을 결정합니다.</h4></td>
	</tr>
	<tr>
	<td><img src="/reborn/images/adoption_form.png"></td>
	<td><h3 style="color:orange; font-weight:bold;">&nbsp;&nbsp; 3. 동의서 작성</h3><br>
		<h4>&nbsp;&nbsp;&nbsp; 상담을 통해 최종 입양을 결정한 후, 동의서를 작성합니다.</h4></td>
	</tr>
	<tr>
	<td><img src="/reborn/images/adoption.png"></td>
	<td><h3 style="color:orange; font-weight:bold;">&nbsp;&nbsp; 4. 입양</h3><br>
		<h4>&nbsp;&nbsp;&nbsp; 반려견을 데려갈 준비를 마치고 센터에 다시 방문합니다. 새로 가족이 된 반려견과 함께 집으로 돌아갑니다.</h4></td>
	</tr>
	<tr>
	<td><img src="/reborn/images/adoption_check.png"></td>
	<td><h3 style="color:orange; font-weight:bold;">&nbsp;&nbsp; 5. 적응 판단</h3><br>
		<h4>&nbsp;&nbsp;&nbsp; 반려견을 입양한 후, 6개월이 지나면 센터 직원이 가정을 방문해 유기견이 새로운 가정에 잘 적응했는지 확인합니다.</h4></td>
	</tr>
</table>

<div id="adoption">
	<a href=adoption.jsp>&lt;&lt;이전</a>
</div>
<div id="adoptionSel">
	<a href=adoptionRule.jsp>다음 &gt;&gt;</a>
</div>

</div>

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