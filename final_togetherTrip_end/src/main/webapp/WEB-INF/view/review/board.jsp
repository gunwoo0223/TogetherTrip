<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content= "text/html; charset=UTF-8">
<!-- BootStrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 헤더 푸터관련 css -->
<!-- Bootstrap Core CSS -->
<link href="main/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Theme CSS -->
<link href="main/css/freelancer.min.css" rel="stylesheet">
<!-- Bootstrap Core CSS -->
<link href="main/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="main/css/half-slider.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="main/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
<!-- 헤어푸터 관련 -->

<title>여행후기 게시판</title>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<section id="portfolio" style="position:relative; top:15%;">
<div class="container">

	<div class="page-header">
		<h1>후기 게시판</h1>
    </div>
	<table class="table table-hover">
		<thead>
			<tr>
				<th style="width: 10%;">번호</th>
				<th style="width: 55%;">제목</th>
				<th style="width: 10%;">작성자</th>
				<th style="width: 15%;">날짜</th>
				<th style="width: 10%;">조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${rvList}" var="rvdto"> 
				<tr>
					<td>${rvdto.rvNum}</td>
					<td><a href="reviewDetail.do?rvNum=${rvdto.rvNum}">${rvdto.rvTitle}</a></td>
					<td>${rvdto.rvWriter}</td>
					<td>${rvdto.rvRegDate}</td>
					<td>${rvdto.rvReadCount}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<div class="col-sm-2" style="padding-left: 5px;padding-right: 0px;">
	<select class="form-control">
		<option>전체</option>
		<option>제목</option>
		<option>작성자</option>
	</select>
</div>

	<div class="col-sm-3" style="padding-left: 0px;padding-right: 0px">
		<input class="form-control" type="text" placeholder="search">
	</div>
	<div class="col-sm-2">
		<button type="button" class="btn btn-default">검색</button>
	</div>
	
	<c:if test="${sessionScope.uId != null || sessionScope.mId != null}">
		<div class="row">
			<div class="form-group">
				<div class="pull-right">
					<a href="reviewWriteForm.do"><button type="button" class="btn btn-default">작성</button></a>
				</div>
			</div>
		</div>
	</c:if>
	
	
	<div class="row text-center">
	    <div class="col-lg-12">
	    	<ul class="pagination">
	
	<!-- 이전버튼 출력 시작 -->
	<c:if test="${pgdto.startPage > 1}">
		<li><a href="reviewBoard.do?currentPage=${pgdto.startPage-pgdto.blockPage}">&laquo;</a></li>
	</c:if>
	<!-- 이전 출력 끝 -->

	<!-- 페이지 출력 시작 -->
	<c:forEach var="i" begin="${pgdto.startPage}" end="${pgdto.endPage}">
		<c:url var="currPage" value="reviewBoard.do">
			<c:param name="currentPage" value="${i}" />
		</c:url>

		<li><a href="${currPage}"> <c:out value="${i}" /></a></li>
	</c:forEach>
	<!-- 페이지 출력 끝 -->

	<!-- 다음버튼 출력 시작 -->
	<c:if test="${pgdto.totalPage>pgdto.endPage}">
		<li><a href="reviewBoard.do?currentPage=${pgdto.startPage+pgdto.blockPage}">&raquo;</a></li>
	</c:if>
	<!--  다음 출력 끝 -->
	
	
			</ul>
		</div>
	</div>
</div>
</section>

<%@ include file="../common/footer.jsp"%>

<!-- 헤더푸터관련 js -->
<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
<div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
    <a class="btn btn-primary" href="#page-top">
        <i class="fa fa-chevron-up"></i>
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