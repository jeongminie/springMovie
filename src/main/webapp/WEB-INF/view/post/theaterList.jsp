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
	
	<title>상영시간표</title>
	
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
		
		.calendarTable{
			margin : auto;
			width : 1200px;
			margin-top: 20px;
		}
		
 		.calendarTable tr td {
			 text-align: center;
		}
		
		.theater-list-box {
		    margin: auto;
   			width: 1200px;
		    border-top: 0;
		}
		
		.theater-list-box .theater-list {
		    margin-top: 30px;
		}
		
		.theater-list-box .theater-tit {
		    width: 100%;
		    overflow: hidden;
		    background-color: #fff;
		    display: block;
		    padding: 10px 20px;
		    background-color: #f7f8f9;
		    border-top: 1px solid #eaeaea!important;
		    border-bottom: 1px solid #eaeaea;
		    margin-top: -1px!important;
		    margin-bottom: 20px;
		} 
		
		.theater-list-box .theater-tit p {
		    float: left;
		    padding: 0;
		    margin: 0 5px 0 0;
		    font-weight: 400;
		}
		
		.theater-list-box .theater-list .theater-type-box {
		    overflow: hidden;
		    width: 100%;
		    position: relative;
		}
		
		.reserve.theater-list-box .theater-list .theater-type-box .theater-type {
		    text-align: left;
		    width: 170px;
		    display: table-cell;
		    vertical-align: middle;
		    position: absolute;
		    top: 20px;
		    left: 0;
		    padding: 0!important;
		}
		
		.reserve.theater-list-box .theater-list .theater-type-box .theater-time {
		    width: 100%;
		    margin-left: 190px;
		}
		
		.reserve.theater-list-box .theater-list .theater-type-box .theater-type p.theater-name {
		    font-size: 1.2em;
		    color: #444;
		    font-weight: 400;
		    margin-bottom: 10px;
		    line-height: 1em;
		}
		
		.reserve.theater-list-box .theater-list .theater-type-box .theater-type p.chair {
		    color: #666;
		    margin-bottom: 10px;
		    line-height: 1em;
		}
		
		.reserve.theater-list-box .theater-list .theater-type-box .theater-type-area {
		    display: table-cell;
		    vertical-align: middle;
		    width: 100px;
		    background-color: #f2f4f5;
		    text-align: center;
		    color: #444;
		    font-weight: 700;
		    border-bottom: 0;
		}

		.reserve.theater-list-box .theater-list .theater-type-box .theater-time-box {
		    display: table-cell;
		    width: 800px;
		}
		
		.reserve.theater-list-box .theater-list .theater-type-box .theater-time .time-list-table {
		    border-top: 1px solid #ebebeb;
		    border-left: 1px solid #ebebeb;
		    width: 800px;
		    margin-left: 9px;
		    width: auto;
		    table-layout: auto;
		}
		
		.reserve.theater-list-box .theater-list .theater-type-box .theater-time .time-list-table colgroup {
		    display: none;
		}
		
		.reserve.theater-list-box .theater-list .theater-type-box .theater-time .time-list-table tbody tr td {
		    width: 99px;
		    border-right: 1px solid #ebebeb;
		    border-bottom: 1px solid #ebebeb;
		    text-align: center;
		}
		
		.reserve.theater-list-box .theater-list .theater-type-box .theater-time .time-list-table tbody tr td .td-ab {
		    width: 100%;
		    height: 69px;
		    display: table;
		}
		
		.reserve.theater-list-box .theater-list .theater-type-box .theater-time .time-list-table tbody tr td .td-ab .txt-center {
		    display: table-cell;
		    vertical-align: middle;
		    position: relative;
		}
		
		.reserve.theater-list-box .theater-list .theater-type-box .theater-time .time-list-table tbody tr td .td-ab .txt-center a {
		    display: inline-block;
		    width: 100%;
		}

		.reserve.theater-list-box .theater-list .theater-type-box .theater-time .time-list-table tbody tr td .td-ab .ico-box {
		    position: absolute;
		    top: 5px;
		    left: 5px;
		    z-index: 1;
		}
		
		.reserve.theater-list-box .theater-list .theater-type-box .theater-time .time-list-table tbody tr td .td-ab p.time {
		    font-size: 1.2em;
		    color: #444;
		    font-weight: 400;
		    line-height: 1em;
		    font-family: Roboto;
		    margin: 0px;
		}
		
		.reserve.theater-list-box .theater-list .theater-type-box .theater-time .time-list-table tbody tr td .td-ab p.chair {
		    color: #01738b;
		    margin: 0px;
		}
		
		.theater-list-box .theater-list .theater-type-box .theater-time .time-list-table tbody tr td {
		    text-align: center;
		}
		
    
	</style>
		
</head>
<body>
	<div id="wrap">
		<jsp:include page="../include/jsp/header_white.jsp" />
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
			<table class="table calendarTable">
				<tr>
					<c:forEach items="${dateList }" var="dateList" varStatus="status">
						<td>
							<c:choose>
								<c:when test="${dayOfWeek[status.index] eq '토'}">
									<span style="color: blue">${dateList }<br>${dayOfWeek[status.index]}</span> 
								</c:when>
								<c:when test="${dayOfWeek[status.index] eq '일'}">
									<span style="color: red">${dateList }<br>${dayOfWeek[status.index]}</span> 
								</c:when>
								<c:otherwise>
									${dateList }<br>${dayOfWeek[status.index]}
								</c:otherwise>
							</c:choose>
						</td>
					</c:forEach>
				</tr>
			</table>	
		</div>
		<div class="reserve theater-list-box">
			<div class="theater-list">
			    <div class="theater-tit">	
			        <p class="movie-grade age-15"></p>	
			        <p><a href="/movie-detail?rpstMovieNo=22022900" title="헤어질 결심 상세보기">헤어질 결심</a></p>	
			    </div>
			    <div class="theater-type-box">	
			        <div class="theater-type">		
			            <p class="theater-name">5관</p>		
			            <p class="chair">총 96석</p>	
			        </div>	
			        <div class="theater-time">		
			            <div class="theater-type-area">2D</div>		
			            <div class="theater-time-box">			
			                <table class="time-list-table">				
			                    <colgroup>					
			                        <col style="width:99px;">					
			                        <col style="width:99px;">					
			                        <col style="width:99px;">					
			                        <col style="width:99px;">					
			                        <col style="width:99px;">					
			                        <col style="width:99px;">					
			                        <col style="width:99px;">					
			                        <col style="width:99px;">				
			                    </colgroup>				
			                    <tbody>				
			                        <tr>
			                            <td class="" brch-no="1372" play-schdl-no="2209021372029" rpst-movie-no="22022900" theab-no="05" play-de="20220902" play-seq="3">	
				                            <div class="td-ab">		
				                            	<div class="txt-center">			
					                            	<a href="" title="영화예매하기">				
					                            		<p class="time">14:45</p>				
					                            		<p class="chair">85석</p>								
					                            	</a>		
				                            	</div>	
				                            </div>
			                            </td>
			                            <td class="" brch-no="1372" play-schdl-no="2209021372031" rpst-movie-no="22022900" theab-no="05" play-de="20220902" play-seq="5">	
			                                <div class="td-ab">		
			                                    <div class="txt-center">			
			                                        <a href="" title="영화예매하기">				
			                                            <p class="time">19:50</p>				
			                                            <p class="chair">62석</p>								
			                                        </a>		
			                                    </div>	
			                                </div>                                
			                            </td>                            
			                        </tr>                            
			                    </tbody>			
			                </table>		
			            </div>        
			        </div>	
			    </div>
			</div>
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