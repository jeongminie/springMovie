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
    #filter-area {
    	width : 1000px;
    	height: 500px;
    	margin : auto;
    	margin-top : 40px;
    	display: flex;
    	border-bottom: 1px solid #EBEBEB;
    }
    
    .movie-list {
    	width : 300px;
    	border-left : 1px solid #EBEBEB;
    }
    
    .cinema {
   		width : 300px;
    	border-left : 1px solid #EBEBEB;
    }
    
    .cinema .city {
    
    	border-right: 1px solid #EBEBEB;
    }
    
    .movie-item-end {
    	width : 400px;
    	color : white;
    	border-left: 1px solid #EBEBEB;
    	border-right: 1px solid #EBEBEB;
    }
    
    .tit {
    	height : 40px;
    	background-color: #BEB4AF;
    	text-align: center;
    	padding: 8px;
    	color : white;
    }
    
    .list {
    	padding: 20px;
    }
	</style>
		
</head>
<body>
	<div id="wrap">
		<jsp:include page="../include/jsp/header_white.jsp" />
		<div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<i class="fa-solid fa-house"></i>
					<a href="#" title="예매 페이지로 이동">메가박스</a>
					<a href="#" title="예매 페이지로 이동">예매정보 알림 신청</a>
				</div>
				
			</div>
		</div>
		<section>
			<div id="filter-area">
				<div class="movie-list">
					<p class="tit">영화</p>
					<div class="list-area">
						<ul class="list">
							<li>헌트</li>
							<li>놉</li>
							<li>한산: 용의 출현</li>
							<li>탑건: 매버릭</li>
							<li>블랙폰</li>
							<li>비상선언</li>
							<li>헤어질 결심</li>
							<li>미니언즈2</li>
							<li>명탐정 코난: 할로윈의 신부</li>
						</ul>
					</div>
				</div>
				
				<div class="cinema">
					<div class="tit">극장</div>
					<div class="d-flex">
						<div class="col-6 city"></div>
						<div class="col-6 address2"></div>
					</div>
				</div>
				
				<div class="movie-item-end">
					<div class="tit" id="time" autofocus>시간</div>
				</div>
			</div>
		</section>
	</div>
	
	<script>
		$(document).ready(function(){
			$("#time").datepicker({
				dayNamesMin:['월', '화', '수', '목', '금', '토', '일']
				,
				
			});
		});
	</script>
	
	
</body>
</html>