<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
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

<title>여행후기 수정</title>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<section id="portfolio" style="position:relative; top:15%;">
<div class="container">
	<div class="page-header">
   		<h1>여행후기 수정</h1>
    </div>
	<div style="padding : 30px;">
    	<form method="POST" action="reviewUpdateProcess.do" enctype="multipart/form-data">
      		<div class="row">
      			<div class="form-group">
       		    	<label>제목</label>
        			<input type="text" name="rvTitle" class="form-control" placeholder="제목을 입력하세요" value="${rvdto.rvTitle}"/>
        			<input type="hidden" name="rvNum" value="${rvdto.rvNum}" /><!-- 수정하기 위해 필요 -->
      			</div>
      		</div>
			<div class="row">
        		<div class="form-group">
        			<label>내용</label>
        			<textarea name="rvContents" class="form-control" rows="15" placeholder="내용을 입력하세요">${rvdto.rvContents}</textarea>
        		</div>
			</div>
			<div class="row">
				<div class="form-group">
			    	<label>이미지업로드</label>
			    	<input type="file" name="filename" class="form-control">
			    	<span>${fn:substringAfter(rvdto.rvImage, "_") }</span>
				</div>
			</div>
			<div class="row">
				<div class="pull-right">
		    		<button type="submit" class="btn btn-default">수정</button>
				</div>
			</div>
    	</form>
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








