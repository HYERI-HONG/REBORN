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
#adoptionPS{text-align:left; padding-bottom:20px; padding-left:20px; font-weight:bold;}
#adoptionPS a{ font-size:20px; color:orange; font-weight:bold; text-decoration:none;}
#KARA { text-align:center; padding-top:170px; font-weight:bold; }
#KARA a{ font-size:20px; color:white; font-weight:bold; text-decoration:none;}
td {color: white; text-align:center;}
footer{ background-color: rgba(0, 0, 0, 0.8); }
h4{color: white;}
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
<section>
<div class ="container">
	<div class="cover">
	<h3 style="color:orange; font-weight:bold; text-align:center;">입양자 선정 제외 기준</h3><br>
    <div class="row detali">
    <h4>1. 외국으로 입양을 원하거나 한국에 거주하는 외국인</h4><br>
    <h4>2. 공장과 회사, 군부대, 농장(과수원 포함), 식당 등 반려의 목적이 아닌 경우</h4><br>
    <h4>3. 3마리 이상의 동물을 동시에 입양하려는 경우(대형견의 경우, 2마리 이상)</h4><br>
    <h4>4. 6~7마리 이상 한꺼번에 키웠거나 현재 키우고 있는 경우</h4><br>
    <h4>5. 3세 미만의 자녀가 2명 이상이거나 초등학생 미만 자녀가 3명 이상인 경우</h4><br>
    <h4>6. 최근 5년 안에 3마리 이상의 동물을 키우다가 중간에 포기한 경우</h4><br>
    <h4>7. 가족 구성원의 동의를 얻지 않은 경우와 미성년자의 입양 신청</h4><br>
    <h4>8. 본인 및 가구 구성원 중 알레르기 및 우울증 등의 질환으로 치료를 받고 있는 경우</h4><br>
    <div class="row" id="adoptionPS">
		<a href=adoptionPS.jsp>&lt;&lt;이전</a></div>
    </div>
	</div>
</div>
</section>
<!-- Slider -->
<section class="main_slider">
	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
		<div class="item active" style="background-image:url(/reborn/images/adoption_bgb.jpg);">
		<div class ="text" style="color:orange; text-align:center; padding-top: 30px;">
		<h3 style="font-weight:bold;">꺼져가는 작은 생명에게 또 한번의 삶을 선물해주고 싶습니다.</h3><br>
		<h3 style="font-weight:bold;">그들에게 보낼 선물에 함께 리본을 달아주시겠습니까?</h3>
		
		<div class ="text" id="KARA">
		<a href="https://www.ekara.org/parttake/adopt">유기견 입양 사이트 바로가기</a>
		</div>
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