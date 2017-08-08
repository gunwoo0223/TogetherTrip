<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="UTF-8">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>TT</title>

<link rel="stylesheet" href="festival/css/3-col-portfolio.css"
	type="text/css" />
<link rel="stylesheet" href="festival/css/bootstrap.min.css"
	type="text/css" />
<!-- Bootstrap Core CSS -->
<link href="main/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Theme CSS -->
<link href="main/css/freelancer.min.css" rel="stylesheet">
<!-- Bootstrap Core CSS -->
<link href="main/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="main/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="festival/js/bootstrap.min.js"></script>
<script src="festival/js/jquery.js"></script>
<script src="festival/js/action.js"></script>
<!-- action.js는 나중에 기능들 처리 할 js 파일 입니다. -->
</head>

<!-- 맛집 / 명소 ㅣㅣ -->

<body>

<%@include file="../common/header.jsp"%>

	<section id="portfolio" style="padding-bottom: 0px;">
		<!-- Page Content -->
		<div class="container">

<div class="row">
<div class="col-sm-2" style="padding-left: 5px;padding-right: 0px;">
	<select class="form-control">
		<option>전체</option>
		<option>제목</option>
		<option>도시명</option>
	</select>
</div>
<div class="col-sm-3" style="padding-left: 0px;padding-right: 0px">
	<input class="form-control" type="text" placeholder="search">
</div>
<div class="col-sm-2">
	<button type="button" class="btn btn-default">검색</button>
</div>
<div class="col-sm-5">
	<h1 class="page-header" style="font-size: 15px; text-align: -webkit-right;">총 게시물의 수 :${totalRecord}</h1>
</div>
</div>

			<div class="row">
				<c:forEach items="${fList}" var="fdto">
					<c:forEach items="${fdto.fImage}" var="fidto">
						<div class="col-md-3 portfolio-item">
							<a href="festival_detail.do?f_num=${fdto.f_num}"> <img class="img-responsive"
								src="images/festival/${fidto.f_thumbnail}" style="width: 700px; height: 205px;">
							</a>
							<h4>
								<a href="festival_detail.do?f_num=${fdto.f_num}">${fdto.f_title}</a>
							</h4>
							<h5>${fdto.f_time}</h5>
							<h5>${fdto.f_loc}</h5>
						</div>

					</c:forEach>
				</c:forEach>
			</div>

			<hr>

<!-- 페이징 -->
<div class="row text-center">
	<div class="col-lg-12">
   		<ul class="pagination">
			<!-- 이전버튼 출력 시작 -->
			<c:if test="${pgdto.startPage > 1}">
				<li><a href="festival.do?currentPage=${pgdto.startPage-pgdto.blockPage}">&laquo;</a></li>
			</c:if>
			<!-- 이전 출력 끝 -->
		
			<!-- 페이지 출력 시작 -->
			<c:forEach var="i" begin="${pgdto.startPage}" end="${pgdto.endPage}">
				<c:url var="currPage" value="festival.do">
					<c:param name="currentPage" value="${i}" />
				</c:url>
		
				<li><a href="${currPage}"> <c:out value="${i}" /></a></li>
			</c:forEach>
			<!-- 페이지 출력 끝 -->
		
			<!-- 다음버튼 출력 시작 -->
			<c:if test="${pgdto.totalPage>pgdto.endPage}">
				<li><a href="festival.do?currentPage=${pgdto.startPage+pgdto.blockPage}">&raquo;</a></li>
			</c:if>
			<!--  다음 출력 끝 -->
		</ul>
	</div>
</div>

</div>
</section>

<%@include file="../common/footer.jsp"%>

<!--     jQuery
   <script src="js/jquery.js"></script>

   Bootstrap Core JavaScript
   <script src="js/bootstrap.min.js"></script>
-->
<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
<div
	class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
	<a class="btn btn-primary" href="#page-top"> <i
		class="fa fa-chevron-up"></i>
	</a>
</div>


<!-- jQuery -->
<script src="main/vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="main/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

<!-- Theme JavaScript -->
<script src="main/js/freelancer.min.js"></script>

<!-- jQuery -->
<script src="main/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="main/js/bootstrap.min.js"></script>
<!-- 헤더푸터관련 js -->

</body>
</html>




