<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<!-- 제이쿼리 -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	
	<script type="text/javascript" src="/resources/js/header.js"></script>
	<link rel="stylesheet" href="/resources/static/css/style.css">
	
  	<!-- fontawesome -->
	<script src="https://kit.fontawesome.com/9a0994e5cb.js" crossorigin="anonymous"></script>
	
  	<!-- google font -->
  	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
	
	<title>예매 오픈 알림 신청</title>
	
	<style>
		#bg {
			z-index : -5;
			overflow: hidden;
			position: absolute;
			width: 100%;
			min-width: 1100px;
			height: 100%;
			margin: 0 auto;
		}
		
		#bg .bg-pattern {
			position: absolute;
			left: 0;
			top: 0;
			z-index: -5;
			width: 100%;
			background: url(/resources/static/image/bg-movie-detail-pattern.png);
		}
		
		#bg img {
			border-radius : 100px;
			display: block;
			width: 100%;
			-webkit-filter: blur(20px);
			-moz-filter: blur(5px);
			-o-filter: blur(5px);
			-ms-filter: blur(5px);
			filter: blur(50px);
    	}
    	
    	#bg:after {
			content: '';
			display: block;
			position: absolute;
			left: 0;
			top: 0;
			right: 0;
			bottom: 0;
			z-index: 2;
			background-color: rgb(193 192 192 / 47%);
		}

		.alarm-box {
			position : absolute;
			margin : auto;
			margin-top : 50px;
			width : 1000px;
			height : 500px;
			position: relative;
		}
		
		.movie-poster{
			display : flex;
			justify-content : center;
			width: 250px;
		    height: 400px;
		    margin : auto;
		    object-fit: cover;
		    border-radius: 5px;
		}
		
		.movie-tit {
			text-align: center;
			margin : 20px 0px 20px 0px;
		}
		
		.select-area{
			width: 250px;
			margin: auto;
		}
		
		.screen-select {
			position : relative;
			z-index: -1;
		}
		
		.screen-select-option {
			position : relative;
			z-index: 1;
		}
		
	</style>
</head>
<body>
	<div id="wrap">
		<jsp:include page="../include/jsp/header_white.jsp" />
		<div id="bg">
			<div class="bg-pattern"></div>
			<img height="885px" src="https://t1.daumcdn.net/movie/4eb261668eb43a125d0adc250a89adb48216c005" onerror="noImg(this, 'main');">
		</div>
		<div class="alarm-box">
			<img src="https://t1.daumcdn.net/movie/4eb261668eb43a125d0adc250a89adb48216c005" class="movie-poster">
			<div class="movie-tit">
				<span>탑건-매버릭</span>
			</div>
			<div class="select-area">
				<div class="screen">
					<select class="form-select screen-select">
						<option value="" hidden>속성</option>
					</select>
					<select class="form-select screen-select-option d-none" multiple>
						<option value="1">DOLBY CINEMA</option>
						<option value="2">THE BOUTIQUE</option>
						<option value="3">MX</option>
						<option value="4">COMFORT</option>
						<option value="5">PUPPY CINEMA</option>
						<option value="6">MEGABOX KIDS</option>
					</select>
				</div>
				<div class="screen mt-2">
					<select class="form-select screen-select">
						<option disabled selected hidden>극장</option>
					</select>
					<select class="form-select screen-select-option d-none" multiple>
						<option value="1">강남</option>
						<option value="2">강남대로(씨티)</option>
						<option value="3">강동</option>
						<option value="4">군자</option>
						<option value="5">동대문</option>
						<option value="6">마곡</option>
					</select>
				</div>
			</div>
		</div>
	
	</div>
	<script>
		$(document).ready(function(){
			
			$(".screen").on("click", function(e){
				var selected = $(this).children(".screen-select-option");
				
				if(selected.hasClass('d-none')) {
					selected.removeClass('d-none');
				} else  {
					selected.addClass('d-none');
				}
			});
			
			$(".screen").children(".screen-select-option").change(function(e){
				var selectedVal = $(this).val();
				var selectedTxt =  $(this).find('option:selected').text();
				
				if(selectedTxt != null) {
					$(this).prev(".screen-select").find('option:selected').text(selectedTxt);
				}
				
				
			});
		});	
	</script>
	
</body>
</html>