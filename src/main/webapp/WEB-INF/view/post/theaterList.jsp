<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    	.theater-detail-page {
			position: relative;
			z-index: 1;
			height: 190px;
			margin: 0;
			color: #ccc;
			background-color: #111;
		}
		
		.theater-detail-page .bg-img {
			position: absolute;
			left: 50%;
			top: 0;
			z-index: 1;
			width: 1100px;
			margin: 0 0 0 -550px;
			height: 100%;
			background-position: center 0;
			background-repeat: no-repeat;
		}
		
		.theater-detail-page .bg-mask {
			position: absolute;
			left: 0;
			top: 0;
			z-index: 3;
			width: 100%;
			height: 100%;
			background: url(https://img.megabox.co.kr/static/pc/images/movie/bg-movie-detail-mask.png) no-repeat center 0;
		}
		
		.theater-detail-page .theater-all {
			position: relative;
			z-index: 4;
			width: 1100px;
			height: 100%;
			margin: 0 auto;
			padding: 0;
		}
		
		.theater-detail-page .theater-all .theater-area-list {
		    display: block;
		    position: relative;
		    width: 100%;
		}
		
		.theater-detail-page .theater-all .theater-area-list .area-depth1 {
    		border-bottom: 1px solid rgba(255,255,255,.15);
		}
		
		.theater-detail-page .theater-all .theater-area-list .area-depth1>li {
		    float: left;
		    margin-left: 72px;
		}
		
		.theater-detail-page .theater-all .theater-area-list .area-depth1>li>.depth1 {
		    position: relative;
		    display: block;
		    color: #fff !important;
		    line-height: 60px;
		    padding: 0 5px;
		}
		
		.theater-detail-page .theater-all .theater-area-list .area-depth1:after {
		    clear: both;
		    content: '';
		    display: block;
		}
		
		.theater-detail-page .theater-all .theater-area-list .area-depth2 {
		    display: none;
		    position: absolute;
		    top: 60px;
		    left: 0;
		    width: 100%;
		    padding: 25px 30px;
		    background-color: #fff ;
		    border-radius: 8px;
		    z-index: 10;
		    box-shadow: 10px 10px 10px rgb(0 0 0 / 20%);
		}
		
		.theater-detail-page .theater-all .theater-area-list .area-depth2 ul li {
		    float: left;
		    margin: 5px 0;
		}
		
		.theater-detail-page .theater-all .theater-area-list .area-depth2 ul li a {
		    position: relative;
		    display: block;
		    vertical-align: middle;
		    color: #444;
		    padding: 0 11px;
		}
		
		.theater-detail-page .theater-all .theater-area-list .area-depth2 ul li a:after {
		    content: '';
		    position: absolute;
		    top: 50%;
		    right: 0;
		    width: 1px;
		    height: 12px;
		    margin-top: -6px;
		    background-color: #d8d9db;
		}
		
		.theater-detail-page .theater-all .name {
		    overflow: hidden;
		    padding: 20px 0 0 0;
		    text-align: center;
		    color: #fff;
		    font-size: 3.0666em;
		    font-weight: 400;
		    line-height: 1.1;
		    text-shadow: 2px 2px 10px rgb(0 0 0 / 70%);
		}
		
		.table{
			margin : auto;
			width : 1200px;
			margin-top: 20px;
		}
		
 		.table tr td {
			 text-align: center;
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
					<a href="#" title="예매 페이지로 이동">극장</a>
					<a href="#" title="예매 페이지로 이동">상영시간표</a>
				</div>
				
			</div>
		</div>
		<div class="theater-detail-page">
			<div class="bg-img" style="background-image:url('/resources/static/image/img-theater-detail.jpg');"></div>
			<div class="bg-mask"></div>
			<div class="theater-all">
				<div class="theater-area-list">
					<ul class="area-depth1">
						<li class="on">
							<a href="" class="depth1" title="서울 선택">서울</a>
							<div class="area-depth2">
								<ul>
									<li class="on">
										<a href="/theater?brchNo=1372" title="강남 상세보기">강남
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=0023" title="강남대로(씨티) 상세보기">강남대로(씨티)
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1341" title="강동 상세보기">강동
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1431" title="군자 상세보기">군자
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1003" title="동대문 상세보기">동대문
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1572" title="마곡 상세보기">마곡
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1581" title="목동 상세보기">목동
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1311" title="상봉 상세보기">상봉
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1211" title="상암월드컵경기장 상세보기">상암월드컵경기장
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1331" title="성수 상세보기">성수
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1371" title="센트럴 상세보기">센트럴
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1381" title="송파파크하비오 상세보기">송파파크하비오
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1202" title="신촌 상세보기">신촌
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1561" title="이수 상세보기">이수
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1321" title="창동 상세보기">창동
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1351" title="코엑스 상세보기">코엑스
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1212" title="홍대 상세보기">홍대
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1571" title="화곡 상세보기">화곡
										</a>
									</li>
									<li>
										<a href="/theater?brchNo=1562" title="ARTNINE 상세보기">ARTNINE
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="">
						</li>
					</ul>
				</div>
				<p class="name">강남</p>
			</div>
		</div>
		<div>
			<span class="d-flex justify-content-center mt-5">상영시간표</span>
			<table class="table">
				<tr>
					<c:forEach items="${dateList }" var="dateList" varStatus="status" end="13">
						<td>${dateList } ${dayStr} </td>
					</c:forEach>
				</tr>
			</table>
		
		</div>
	</div>
	
	<script>
		$(document).ready(function(){
			
			$("#time").datepicker({
				dayNamesMin:['월', '화', '수', '목', '금', '토', '일']
			});
			
			$(".depth1, .area-depth2").on("mouseover", function(){
				$(".theater-detail-page .theater-all .theater-area-list .area-depth2").css("display", "block");
			});
			
			$(".depth1, .area-depth2").on("mouseleave", function(){
				$(".theater-detail-page .theater-all .theater-area-list .area-depth2").css("display", "none");
			});
		});
	</script>
	
	
</body>
</html>