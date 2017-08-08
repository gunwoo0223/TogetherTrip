<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<title>여행후기 작성</title>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<section id="portfolio" style="position:relative; top:15%;">
<div class="container">
	<div class="page-header">
   		<h1>여행후기 작성</h1>
    </div>
	<div style="padding : 30px;">
    	<form method="POST" action="reviewWriteProcess.do" enctype="multipart/form-data">
      		<div class="row">
      			<div class="form-group">
       		    	<label>제목</label>
        			<input type="text" name="rvTitle" id="rvTitle" class="form-control" placeholder="제목을 입력하세요" />
        			<c:choose>
        				<c:when test="${sessionScope.uName != null}">
        					<input type="hidden" name="rvWriter" value="${sessionScope.uName}" />
        				</c:when>
        				<c:when test="${sessionScope.mName != null}">
        					<input type="hidden" name="rvWriter" value="${sessionScope.mName}" />
        				</c:when>
        			</c:choose>
      			</div>
      		</div>
			<div class="row">
        		<div class="form-group">
        			<label>내용</label>
        			<textarea name="rvContents" id="rvContents" class="form-control" rows="15" placeholder="내용을 입력하세요"></textarea>
        		</div>
			</div>
			<div class="row">
				<div class="form-group">
			    	<label>이미지업로드</label>
			    	<!-- <input class="form-control" id="files-upload" type="file" name="filename" multiple="multiple"> -->
			    	<input class="form-control" id="files-upload" type="file" name="filename">
				</div>
			</div>
			<div class="row">
				<div class="pull-right">
					<!-- u_id 혹은 m_id가 review테이블의 foreign key이기 때문에 반드시 들어가야 나중에 참조가 가능함. -->
					<c:choose>
        				<c:when test="${sessionScope.uId != null}">
        					<input type="hidden" name="uId" value="${sessionScope.uId}" />
        				</c:when>
        				<c:when test="${sessionScope.mName != null}">
        					<input type="hidden" name="mId" value="${sessionScope.mId}" />
        				</c:when>
        			</c:choose>
		    		<button type="submit" class="btn btn-default" id="reviewWriteButton">작성</button>
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

<!-- 글쓰기 유효성 검사 -->
<script src="review/js/review.js"></script>

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








