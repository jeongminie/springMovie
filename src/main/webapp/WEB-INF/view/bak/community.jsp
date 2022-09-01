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
	
	<title>커뮤니티</title>
	
	<style>
		.list-wrap {
			border-radius: 20px;
			background-color: #F9F9F9;
			margin : auto;
			width : 900px;
			margin-top: 30px;
			border : 1px solid #dee2e6;
		}
		
		table {
			/* border-collapse: collapse; */
			border-radius: 20px;
		}
		
		.table thead tr {
			background-color: white;
			border-radius: 20px
		}

		.table thead th {
			width : 100%;
		    padding: 15px 5px;
		    font-size: 12px;
		    white-space: nowrap;
		    text-align: center;
			border-bottom: 0.5px solid #dee2e6;
		}
		
		.table tbody td {
			text-align: center;
		}
		
		.table tbody tr:hover {
			background-color: white;
		}
		
		.table th, .table td {
			border-top : 0px;
		}
		
		.table th:first-child {
			border-radius: 20px 0 0 0;
		}
		
		.table th:last-child {
			border-radius: 0 20px 0 0;
		}
		
		.write-btn {
			font-size : 20px;
			display: scroll;
		    position: fixed;
		    /* bottom: 10px; */
		    right: 470px;
		    top: 180px;
		    cursor: pointer;
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
					<a href="#" title="예매 페이지로 이동">커뮤니티</a>
				</div>
				
			</div>
		</div>
		<section>
			<div class="list-wrap">
				<table class="table">
					<thead>
						<tr>
							<th class="col-1" scope="col">번호</th>
							<th class="col-5" scope="col">제목</th>
							<th class="col-2" scope="col">글쓴이</th>
							<th class="col-3" scope="col">날짜</th>
							<th class="col-2" scope="col">조회 수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>test</td>
							<td>test test test</td>
							<td>test</td>
							<td>test</td>
							<td>test</td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
		<i class="fa-solid fa-pen write-btn"></i>
	</div>
	
	<script>
		$(document).ready(function(){
			$(".write-btn").on("click", function(){
				location.href = "create"
			});
		});
	</script>
	
	
</body>
</html>