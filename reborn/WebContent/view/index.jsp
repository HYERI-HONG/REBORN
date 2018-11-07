<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>리본(REBORN)</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/jejuhallasan.css">
<style>
body {/* font-family :'Jeju Hallasan', serif; font-family :'Hanna', serif; */ /* font-weight:bold; */ background-color: rgba(0, 0, 0, 0.7); text-decoration:none;}
/* #header{ height: 100px; } */
.navbar{ background-color:#f2f2f2; margin-bottom:0px; }
header { height : 100px; background-color: rgba(0, 0, 0, 0.8); position: relative; z-index: 1; }
#logo img{ /* padding-top:10px; */ width:70%; height:auto}
#main_menu a{ text-decoration:none; color:white; padding-right:20px; font-size:20px; }
/* #logo a{font-family :'Hanna', serif; text-decoration:none; font-size: 45px; color: white;} */
.item{height:53em;}
.main_slider .item{background-repeat: no-repeat; background-size:100% 100%; background-position:center;}
.main_menu {max-width:100%; height:auto;}
#page{text-decoration:none;}
.main_menu img {width:30%; height:30%;}
.card {
  	display: block;
    margin-bottom: 20px;
    line-height: 1.42857143;
    border-radius: 2px;
    box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12);
    transition: box-shadow .25s;
}
.card:hover {
  box-shadow: 0 8px 17px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
}
.img-card {
  width: 100%;
  height:200px;
  border-top-left-radius:2px;
  border-top-right-radius:2px;
  display:block;
    overflow: hidden;
}
.img-card img{
  width: 100%;
  height: 200px;
  object-fit:cover;
  transition: all .25s ease;
}
.card-content {
  padding:15px;
  text-align:left;
}
.card-title {
  margin-top:0px;
  font-weight: 700;
  font-size: 1.65em;
}
.card-title a {
  color: #fff;
  text-decoration: none !important;
}
.card-read-more {
  border-top: 1px solid #D4D4D4;
}
.card-read-more a {
  text-decoration: none !important;
  padding:10px;
  font-weight:600;
  text-transform: uppercase
}
footer{background-color: rgba(0, 0, 0, 0.8); }
.footer-bottom { background: #e3e3e3; border-top: 1px solid #DDDDDD; padding-top: 15px; padding-bottom: 10px; text-align:center;}
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
               <div class="text-center" id="logo">
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
<!-- end: Header -->
</div>
<!-- Slider -->
<section class="main_slider">
	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
	<div class="carousel-inner" >
		<div class="item active" style="background-image:url(/reborn/images/home_bg.PNG);">
			<div class="carousel-caption">
				<h2><span style="font-size:45px;">Welcome to </span>your one stop adoption spot <br></h2>
				<h3>Check out our dog matchup tool, get information about adoption, </h3>
				<h3>search for animal shelters, and more</h3>
			</div>
		</div>
	</div>
	</div>
</section>
<div class="container" style="padding-top:30px;">
    <div class="row">
        <div class="col-xs-12 col-sm-4">
            <div class="card" style="background-color:#856950;">
                <a class="img-card" href="/reborn/view/dogting.jsp">
                    <img src="/reborn/images/home_matching.jpg"/>
                </a>
                <br />
                <div class="card-content" style="color:white;">
                    <h4 class="card-title">
                        <a href="/reborn/view/dogting.jsp">
                            Matching Service
                        </a>
                    </h4>
                    <div class="">
                        Our Matching tool help you to find out which types of breeds and mixes may be a good fit for you and your family.
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-4">
            <div class="card" style="background-color:#112536;">
                <a class="img-card" href="/reborn/view/adoption.jsp">
                    <img src="/reborn/images/home_adoption.jpg"/>
                </a>
                <br />
                <div class="card-content"  style="color:white;">
                    <h4 class="card-title">
                        <a href="/reborn/view/adoption.jsp">
                            Adoption Process
                        </a>
                    </h4>
                    <div class="">
                        If you want to know how to adopt homeless dog, check this page. we will remind you of a few points and connect with adoption website.
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-4">
            <div class="card" style="background-color:#336c88;">
                <a class="img-card" href="/reborn/shelters?city=all&page=1">
                    <img src="/reborn/images/home_dogshelter.jpg"/>
                </a>
                <br />
                <div class="card-content" style="color:white;">
                    <h4 class="card-title">
                        <a href="/reborn/shelters?city=all&page=1">
                            Dog Shelters 
                        </a>
                    </h4>
                    <div class="">
                        You can find out where you nearest dog's shelters is. Check the addresses and contact numbers we provide.
                    </div>
                </div>
            </div>
        </div>
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