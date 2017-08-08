<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행지 찾기</title>

<!-- Theme CSS -->
<link href="main/css/freelancer.min.css" rel="stylesheet">

<!-- Bootstrap Core CSS -->
<link href="main/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="allSearch/css/3-col-portfolio.css" rel="stylesheet">
<link href="allSearch/css/common.css" rel="stylesheet">
<link href="allSearch/css/line/orange.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="main/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googl
eapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.0.0.js"></script>

<script type='text/javascript'>
	
</script>
</head>
<body>
	<%@include file="../common/header.jsp"%>

	<section id="portfolio" style="position: relative; margin-top: 150px; padding: 0px;">
		<div id="container-top">
			<div id="location">
				<div class="sub_location sub_location_list">
					<div class="wrapper">
						<ul class="location">
							<li><a class="home" href="#">home</a></li>
							<li><a href="allSearch.do">어디를 갈까</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="content">
				<form action="searchResult.do" method="post" id="searchForm" style="height: 600px;">
					<div class="area-section">
						<div class="area-title category"></div>
						<div class="area-map">
							<ul>
								<li class="icon1"><button value="인천" type="button">인천</button></li>
								<li class="icon2"><button value="서울" type="button">서울</button></li>
								<li class="icon3"><button value="경기" type="button">경기</button></li>
								<li class="icon4"><button value="강원" type="button">강원</button></li>
								<li class="icon5"><button value="충남" type="button">충남</button></li>
								<li class="icon6"><button value="세종" type="button">세종</button></li>
								<li class="icon7"><button value="충북" type="button">충북</button></li>
								<li class="icon8"><button value="대전" type="button">대전</button></li>
								<li class="icon9"><button value="경북" type="button">경북</button></li>
								<li class="icon10"><button value="전북" type="button">전북</button></li>
								<li class="icon11"><button value="대구" type="button">대구</button></li>
								<li class="icon12"><button value="광주" type="button">광주</button></li>
								<li class="icon13"><button value="전남" type="button">전남</button></li>
								<li class="icon14"><button value="경남" type="button">경남</button></li>
								<li class="icon15"><button value="울산" type="button">울산</button></li>
								<li class="icon16"><button value="부산" type="button">부산</button></li>
								<li class="icon17"><button value="제주" type="button">제주</button></li>
							</ul>
						</div>
						<div class="area-category"></div>
					</div>
					<div class="topic-section">
						<div class="topic-title category"></div>
						<div class="topic-area">
							<p>
								<input type="checkbox" name="topic-check" id="topic-check1"
									value="place"> <label for="topic-check1">명 소</label>
							</p>
							<p>
								<input type="checkbox" name="topic-check" id="topic-check2"
									value="restaurant"> <label for="topic-check2">맛 집</label>
							</p>
							<p>
								<input type="checkbox" name="topic-check" id="topic-check3"
									value="stay"> <label for="topic-check3">숙 박</label>
							</p>
							<p>
								<input type="checkbox" name="topic-check" id="topic-check4"
									value="festival"> <label for="topic-check4">축 제</label>
							</p>
						</div>
					</div>
					<div class="search-reset-button">
						<input type="submit" value="검색하기" />
						<button type="button">초기화</button>
					</div>
				</form>
			</div>
		</div>
	</section>
	<%@include file="../common/footer.jsp"%>

	<!-- JQuery -->
	<script src="main/vendor/jquery/jquery.min.js"></script>
	<script src="main/js/jquery.js"></script>
	<script src="allSearch/js/common.js"></script>
	<script src="allSearch/js/icheck.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="main/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Theme JavaScript -->
	<script src="main/js/freelancer.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

	<div
		class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
		<a class="btn btn-primary" href="#page-top"> <i
			class="fa fa-chevron-up"></i>
		</a>
	</div>
</body>
</html>