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
.main_slider .item{background-repeat: no-repeat; background-size:100% 100%; background-position:center;}
.main_menu {max-width:100%; height:auto;}
.cover {border-radius: 50px; background: #666666; margin: 80px auto; padding: 23px 50px; width: auto; height: auto; opacity: 0.8;}
.survey_title{color:orange; text-align:center; /* font-weight:bold; */}
.btn { font-weight:bold; border-radius: 50px; }
#adoptionPS{text-align:right; padding-bottom:20px; padding-right:20px; font-weight:bold;}
#adoptionPS a{ font-size:20px; color:orange; font-weight:bold; text-decoration:none;}
td {color: white; text-align:center;}
footer{ background-color: rgba(0, 0, 0, 0.8); }
h5 { color: white; }
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
<h3 style="font-weight:bold;"> 유기견 입양 전 <span style="color:orange; font-size:30px;">짚고</span> 넘어가세요!</h3><br>
<h4 style="padding:5px 0 0 30px"> &clubs; 반려동물을 맞이할 환경적 준비, 마음의 각오는 되어 있습니까? </h4><br>
<h4 style="padding:5px 0 0 30px"> &clubs; 강아지의 수명은 10년 이상입니다. 한 번 맺은 반려견과의 인연을 끝까지 책임지고 보살피겠다는 결심이 섰습니까? </h4><br>
<h4 style="padding:5px 0 0 30px"> &clubs; 가족 구성원 모두가 동의하였습니까? </h4><br>
<h4 style="padding:5px 0 0 30px"> &clubs; 반려견을 길러본 경험이 있습니까? 내 동물을 위해 공부할 각오가 되어있습니까? </h4><br>
<h4 style="padding:5px 0 0 30px"> &clubs; 반려견이 아플 때 적절한 치료를 해주고, 중성화 수술(불임수술)을 실천할 생각입니까? </h4><br>
<h4 style="padding:5px 0 0 30px"> &clubs; 입양으로 인한 경제적 부담을 짊어질 의사와 능력이 있습니까? </h4><br>
<h4 style="padding:5px 0 0 30px"> &clubs; 이미 기르고 있는 다른 동물과 잘 어울릴 수 있을까요? </h4><br>
</div>
<section>
<div class ="container">
	<div class="cover">
	<h4 style="color:orange; font-weight:bold;">입양 시 일부 경비가 청구 될 수 있습니다!</h4><br>
    <div class="row detali">
    <h5>&clubs; 공공기관에서 보호하고 있는 유기동물 중 보호시설을 공고한 지 10일이 지나도 주인이 나타나지 않을 경우 일반인에게 분양할 수 있습니다.</h5><br>
    <h5>&clubs; 입양 보호시설에 미리 전화로 문의하시고 담당자의 안내에 따라 방문 일시 등을 예약합니다.</h5><br>
    <h5>&clubs; 입양 시 신분증 복사본 2장과 개 집, 개줄, 목걸이 등 필요한 물품을 준비하고 보호시설을 방문해 입양 계약서를 작성해야 합니다.</h5><br>
    <h5>&clubs; 입양 보호시설에는 신청자 본인이 직접 방문해야 합니다.</h5><br>
    <h5>&clubs; 미성년자에게는 반려동물을 분양하지 않습니다. 분양을 원하는 미성년자는 보호자의 동행하에 입양 가능합니다.</h5><br>
    <div class="row" id="adoptionPS" style="text-align:right;">
	<a href=adoptionPS.jsp>다음&gt;&gt;</a></div>
    </div>
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