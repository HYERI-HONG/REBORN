<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
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
.navbar{background-color:#f2f2f2; margin-bottom:0px; /* opacity:0.5; */}
header { height : 100px; background-color: rgba(0, 0, 0, 0.8); /* opacity:0.6; */ position: relative; z-index: 1; }
#logo img{ /* padding-top:10px; */ width:70%; height:auto }
#main_menu a{text-decoration:none; color:white; padding-right:20px; font-size:20px;}
.survey_slider {width:100%; height:100%; font-weight:bold;}
.cover {border-radius: 50px; background: #444444; margin: 80px auto; padding: 23px 50px; width: 88%; height: 500px; opacity: 0.8;}
#test{color:#f5f5ef;}
#backBtn {color:black; margin-top:40px;}
.survey_title{padding-top:90px; text-align:center; font-size:70px;}
.clearfix{button-color:#f5f5ef; padding-top:20px; color:black;}
.btn { border-radius: 50px; }
.radio {font-size:20px; font-family:'Nanum Gothic', serif; padding-top:20px;}
.radio button hover{color:black;}
footer{ background-color: rgba(0, 0, 0, 0.8); }
input[type="radio"] { display: none; }
.radio:hover{ color:violet; }
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
<section class="survey_slider">
<div class ="container">
	<div class="cover">
		<div class="carousel slide" data-interval="1000000" data-ride="carousel" id="test">
			<div class="question-container">
				
			</div>		
		</div>
		<div class="completed-message"></div>
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
	  var slides = [
	    {
	    	text: "당신에게 어울리는 강아지를 찾아보세요!",
	    	button: true,
	    },
	    {
	    	text: "현재 기르고 있는 반려견이 있나요?",
	    	radios: true,
	    },
	    {
	    	text: "반려견을 키워본 적 있나요?",
	    	radios: true,
	    },
	    {
	    	text: "동물 털 알러지가 있나요?",
	    	radios: true,
	    },
	    {
	    	text: "선호하는 반려견의 크기는?",
	    	radios: true,
	    },
	    {
	    	text: "어떤 성격의 반려견을 선호하나요?",
	    	radios: true,
	    },
	    {
	    	text: "하루 평균 몇 시간을 반려견과 함께 보낼 수 있나요?",
	    	radios: true,
	    },
	    {
	    	text: "일주일에 몇 번 반려견과 산책할 수 있나요?",
	    	radios: true,
	    },
	    {
	    	text: "자녀가 있나요?",
	    	radios: true,
	    },
	    {
	    	text: "현재 주거형태는 어떤가요?",
	    	radios: true,
	  	},
	  	{
	  		text: "현재 주거지의 방음 처리가 잘 되어 있나요?",
	  		radios: true,
		},
		{
			text: "현재 주거지의 기후는 어떤가요?",
			radios: true,
		},
		{
			text: "반려견의 지적수준에 대한 기대는 어떠한가요?",
			radios: true,
		},
		{
			text: "반려견이 가구나 옷을 망가뜨리는 것에 대하여 어떻게 생각하나요?",
			radios: true,
		},
		{
			text: "버튼을 눌러 결과를 확인하세요",
			result: true,
		}
	  ];

	  var countSlides;
	  countSlides = slides.length;

	  function createSlides() {
	    // I wanna take the slider ID in as argument in order to make it more versatile. Dont know if it could work
	    var wrapper = $("#test");
	    var questionNumber = 1;
	    var questionsTotal = 0;
	    var output;

	    for(var i = 0; i < countSlides; i++) {
	      if (slides[i].radios === true) {
	        questionsTotal += 1;
	      }
	    }

	    output = "<div class='carousel-inner'>";
	    // Loop through all elements and insert html block of radio buttons
	    for(var i = 0; i < countSlides; i++) {
	      if (i === 0) {
	        output += "<div class='item active'>";
	      } else {
	        output += "<div class='item'>";
	      }
	      output += "<div class='section'>";
	      output += "<div class='question'>";
	      output += "<div class='question-number clearfix'>";
	      
	     if (slides[i].radios === true) {
	        output += "<p style='color:white;'>Question " + questionNumber + " of " + questionsTotal + "</p>";
	        output += "<hr>";
	        questionNumber += 1;
	     }
	     	output += "</div>";
	      if (slides[i].radios === true) {
	    	 output += "<p style='font-size:30px;'>" + slides[i].text; + "</p>";
	         output += "<div class='radio-button-group'>";
	       if(i === 1){       	
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='a=5' required> 1. 있다";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='a=1'> 2. 없다";
		        output += "</label>";
		    }else if(i === 2){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='b=1' required> 1. 있다";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='b=5'> 2. 없다";
		        output += "</label>";
		    }else if(i === 3){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='c=1' required> 1. 있다";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='c=5'> 2. 없다";
		        output += "</label>";
	        }else if(i === 4){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='d=1' required> 1. 소형견";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='d=3'> 2. 중형견";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='d=5'> 3. 대형견";
		        output += "</label>";
		    }else if(i === 5){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='e=5&f=3&g=3' required> 1. 사교적인";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='e=3&f=5&g=1'> 2. 활동적인";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='e=1&f=1&g=5'> 3. 조용한";
		        output += "</label>";
		    }else if(i === 6){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='h=5' required> 1. 6시간 미만";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='h=1'> 2. 6시간 이상";
		        output += "</label>";
		    }else if(i === 7){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='i=5' required> 1. 매일";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='i=1'> 2. 3번 미만";
		        output += "</label>";
		    }else if(i === 8){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='j=5' required> 1. 있다 혹은 자녀 계획이 있다";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='j=1'> 2. 없다";
		        output += "</label>";
		    }else if(i === 9){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='l=5' required> 1. 공동주택(아파트, 빌라 등)";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='l=1'> 2. 단독주택";
		        output += "</label>";
		    }else if(i === 10){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='m=5' required> 1. 그렇다";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='m=1'> 2. 그렇지 않다";
		        output += "</label>";
		    }else if(i === 11){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='n=5&o=1' required> 1. 덥다";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='n=1&o=5'> 2. 춥다";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='n=3&o=3'> 3. 보통이다";
		        output += "</label>";
		    }else if(i === 12){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='p=5' required> 1. 높았으면 좋겠다";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='p=1'> 2. 상관없다";
		        output += "</label>";
		    }else if(i === 13){
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='q=1' required> 1. 불편하다";
		        output += "</label>";
		        output += "<label class='radio'>";
		        output += "<input id='radios" + i + "' name='radios" + i + "' type='radio' value='q=5'> 2. 신경쓰지 않는다";
		        output += "</label>";
		    } 
			output += "<input style='font-weight:bold;' type='button' id='backBtn' href='#test' data-slide='prev' class='btn' value='« Back'></input>";
			output += "</div>"; // .radio-button-group

	      }
	      
	      if (slides[i].button === true) {
	    	  output += "<h1 class='survey_title' style='font-size:49px; font-weight:bold;'>" + slides[i].text; + "</h1><br>";
	    	  output += "<div class='clearfix'><button href='#test' style='font-size:25px; font-weight:bold; margin-top:20px;' class='btn center-block' data-slide='next'> Start survey </button></div>";
	      }
	      if (slides[i].result === true) {
	    	  output += "<div class='results'></div>";
	      }
	      output += "</div>";
	      output += "</div>";
	      output += "</div>"; // .section
	    }
	    output += "</div>"; // .carousel-inner
	    $(wrapper).append(output);
	  }

	  createSlides();
	  
	  function resultq() {
	    var values;
	    var output = "";
	    var foo = [];
	    for (var i = 1; i < 14; i++)
	    {
	      values = $(':radio[name="radios'+i+'"]:checked').val();
	      foo.push(values.split("&"));
	    }
	    output += "<p style='font-size:50px; font-weight:bold; margin-top:20px; text-align:center;'>" + slides[i].text; + "</p>";
	    output += "<form method='POST' action='/reborn/survey' name='survey'>";
	    output += "<input type='hidden' name='foo' value=" + foo.sort()+">";
	    output += "<input type='submit' style='font-size:25px; font-weight:bold; margin-top: 50px; color:black;' class='btn center-block' value='결과 확인'>";
	    output += "</form>";
	 
	    $(".results").html(output);
	  }
	  // Toggles the animated background color fill on the label for each radio button
	  // And fires the next slide in the carousel
	  $("input").click(function() {
	    $("input:not(:checked)").parent().removeClass("checked");
	    $("input:checked").parent().addClass("checked");
	    $(".carousel").delay(600).queue(function() {	
	      $(this).carousel("next");
	      $(this).dequeue();
	    });
	    resultq();
	  });
	});
</script>
</body>
</html>