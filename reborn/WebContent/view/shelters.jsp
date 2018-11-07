<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, model.CenterInfoVO, model.PagingVO" %>
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
.survey_title{color:white; text-align:center; font-weight:bold;}
.btn { font-weight:bold; border-radius: 50px; }
#DogInfo{text-align:right; padding-bottom:20px; padding-right:20px;}
#DogInfo a{ font-size:20px; color:black; font-weight:500; text-decoration:none;}
#DogInfo a:hover{color:orange;}
td {color: white; text-align:center;}
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
                  <a href="/reborn/view/index.jsp"><img src="/reborn/images/reborn_logo.png"></a>                  
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
		<div class="item active" style="background-image:url(/reborn/images/shelters_bg.jpg);">
		<div class ="text" style="padding:230px 2px 0 30px; color:white;">
		<h2 style="font-weight:bold;">유기견 보호센터<br></h2>
		<h3>가까이 있는 유기견 보호센터를 방문해보세요.<br></h3>
		<h3>당신의 관심이 꺼져가는 작은 생명들에게 새로운 삶을 되찾아 줄 수 있습니다.<br></h3>
		</div>
		</div>
	</div>
</section>
<section class="survey_slider">
<div class ="container">
	<div class="cover">
	<br>
<!-- 	<h1 class="survey_title">〔 유 기 동 물  &nbsp&nbsp 보 호 센 터 〕</h1><br> -->
    <div class="row detali" style="text-align:center;">
    <div class="col-md-2 col-md-offset-4">
    	<h4 style='color: white;'>상세 검색</h4>
    </div>
   <div class="col-md-2 dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">지역
    <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=all&page=1">전국</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=seoul&page=1">서울특별시</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=busan&page=1">부산광역시</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=daegu&page=1">대구광역시</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=incheon&page=1">인천광역시</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=gwangju&page=1">광주광역시</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=daejeon&page=1">대전광역시</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=ulsan&page=1">울산광역시</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=gyeonggi&page=1">경기도</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=gangwon&page=1">강원도</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=chungbuk&page=1">충청북도</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=chungnam&page=1">충청남도</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=jeonbuk&page=1">전라북도</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=jeonnam&page=1">전라남도</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=gyeongbuk&page=1">경상북도</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=gyeongnam&page=1">경상남도</a></li>
      <li role="presentation"><a style="font-weight:bold;" role="menuitem" tabindex="-1" href="/reborn/shelters?city=jeju&page=1">제주특별자치도</a></li>
    </ul>
    </div>
    </div>

    <form method="get" action="/reborn/shelters" id="CenterInfo">
  	<table class="table" id="table">
  		<tr>
  			<th style='color: white; text-align:center;'>지역</th>
  			<th style='color: white; text-align:center;'>보호센터명</th>
  			<th style='color: white; text-align:center;'>전화번호</th>
  			<th style='color: white; text-align:center;'>주소</th>
  			<!-- <th style='text-align:center;'>위치</th> -->
  		</tr>
		<% 
			
			ArrayList<CenterInfoVO> list = (ArrayList<CenterInfoVO>)request.getAttribute("list");
			if(list != null){
				for(CenterInfoVO civo : list){
  		%>
  		<tr>
  			<td><%= civo.getCity() %></td>
			<td><%= civo.getCenter() %></td>
			<td><%= civo.getTel() %></td>
			<td><%= civo.getAddr() %></td>
		</tr>
		<%
				}
			}
		%>
	</table>
	</form>
	
	<nav aria-label="Page number" style="text-align:center;">
	<ul class="pagination" >
		<%
			PagingVO pvo = (PagingVO)request.getAttribute("pvo");
			if(pvo.getPageStart()<pvo.getCurrentBlock()){
		%>
			<li class="page-item"><a class="page-link" href="#" aria-label="Previous">
		<%
			}
			else{
		%>
			<li class="page-item"><a class="page-link" href="/reborn/shelters?city=all&page=${ pvo.prevPage }" aria-label="Previous">
		<%
			}
		%>
		<span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      	</a>
    	</li>
    	
    	<%
			for(int i=pvo.getBlockStart(); i<=pvo.getBlockEnd(); i++){
				if(pvo.getCurrentPage() == i){
    	%>
    	   	    <li class="page-item"><a class="page-link" href="#"><%=i%>
    	<%
				}	
				else{
    	%>
    	    	<li class="page-item"><a class="page-link" href="/reborn/shelters?city=all&page=<%=i%>"><%=i%>
		<%		}%>
				</a></li>
		<% 	}	%>
		
		<%
			if(pvo.getPageEnd()<pvo.getTotalPage()){
		%>
			<li class="page-item"><a class="page-link" href="/reborn/shelters?city=all&page=${ pvo.nextPage }" aria-label="Next">
		<%
			}
			else{
		%>
			<li class="page-item"><a class="page-link" href="#" aria-label="Next">
		<%
			}
		%>
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
     	</a>
    	</li>
  	</ul>
	</nav>
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
<script>
$(document).ready(function() {
	$('.dropdown').each(function (key, dropdown) {
		var $dropdown = $(dropdown);
		$dropdown.find('.dropdown-menu a').on('click', function () {
			$dropdown.find('button').text($(this).text()).append(' <span class="caret"></span>');
		});
	});
});
</script>
</body>
</html>