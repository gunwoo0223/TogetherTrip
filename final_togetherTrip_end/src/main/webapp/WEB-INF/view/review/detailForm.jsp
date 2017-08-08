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

<title>여행후기 상세</title>

<script type="text/javascript">
var sessionUId = "<%=session.getAttribute("uId") %>"
var sessionMId = "<%=session.getAttribute("mId") %>"
</script>

</head>
<body>
<%@ include file="../common/header.jsp"%>
<section id="portfolio" style="position:relative; top:15%;">
<div class="container">
	<div class="page-header">
		<h1>여행후기 상세</h1>
    </div>
    <div style="padding : 30px;">
    	<div class="row">
    		<!-- 자기가 쓴 글만 수정/삭제가 가능하도록 설정 -->
    		<c:if test="${(rvdto.uId != null && rvdto.uId == sessionScope.uId) || (rvdto.mId != null && rvdto.mId == sessionScope.mId)}">
			    <div class="pull-right">
			       <button type="button" class="btn btn-default" id="reviewUpdateForm">수정</button>
			       <button type="button" class="btn btn-default" id="reviewDelete">삭제</button>
			       <hr/>
			    </div>
		    </c:if>
	 	</div>
	    <div class="row">
		    <div class="form-group pull-right">
		    <input type="hidden" name="rvNum" value="${rvdto.rvNum}" id="rvNum"/>
		      <label>작성자</label>
		      <label>${rvdto.rvWriter}</label>
		      <label>작성시간</label>
		      <label>${rvdto.rvRegDate}</label>
		      <label>조회수</label>
		      <label>${rvdto.rvReadCount}</label>
		      <hr/>
		    </div>	
	    </div>
       <div class="row">
	       <div class="form-group">
	         <label>제목</label>
	         <label>${rvdto.rvTitle}</label>
	         <hr/>
	       </div>
	 	</div>
	 	<div class="row">          
	       <div class="form-group">
	         <label>내용</label>
	         <label>${rvdto.rvContents}</label>
	         <hr/>
	       </div>
	    </div>
	    <!-- 이미지가 있을 때만 보여준다. -->
	    <c:if test="${rvdto.rvImage != null}">
		    <div class="row">          
		       <div class="form-group">
		         <label><img src="images/review/${rvdto.rvImage}" ></label>
		         <hr/>
		       </div>
		    </div>
	    </c:if>
	    
	    
	    <br/><br/>
	    
	    <!-- 여기서부터 댓글 -->
	    
		<div class="replyListForm">
		    <c:forEach items="${rvdto.rpList}" var="rpdto">
			    <div class="replyList">
					<div class="row">          
					    <div class="form-group">
						    <label>작성자</label>
						    <label>${rpdto.rpWriter}</label>
						    <label>작성시간</label>
						    <label>${rpdto.rpRegDate}</label>
						    
						    <!-- 자기가 쓴 댓글만 수정 삭제가 가능하도록 설정 -->
						    
						    <c:if test="${(rpdto.uId != null && rpdto.uId == sessionScope.uId) || (rpdto.mId != null && rpdto.mId == sessionScope.mId)}">
							    <div class="pull-right">
							    	<!-- 댓글 삭제를 눌렀을 때, 해당 댓글에 대한 고유num값을 넘겨야 하므로 이렇게 함. ajax에서 var rpNum = $(this).prop('id'); 이런식으로 받아옴 -->
								    <label class="replyUpdateButton" id="${rpdto.rpNum}"><a>수정</a></label>
								    <label class="replyDeleteButton" id="${rpdto.rpNum}"><a>삭제</a></label>
							    </div>
							</c:if>						    
						    
					    </div>
				    </div>
				    <div class="row">          
					    <div class="form-group">
						    <label>댓글내용</label>
						    <label>${rpdto.rpContents}</label>
						    <hr/>
					    </div>
				    </div>	    
				</div>
		    </c:forEach>
	    </div>
	    <!-- 로그인을 해야 댓글작성이 가능함 -->
	    <c:if test="${sessionScope.uName != null || sessionScope.mName != null}">
	    <div class="row">
	    	<div class="form-group">
	    		<c:choose>
	    			<c:when test="${sessionScope.uName != null}">
	    				<input type="hidden" name="rpWriter" id="rpWriter" value="${sessionScope.uName}" />
	    				<input type="hidden" name="uId" id="uId" value="${sessionScope.uId}" /> <!-- 댓글테이블(reply)에 foreign key가 설정되어 있기 때문에 값을 넣어줌 -->
	    				<input type="hidden" name="mId" id="mId" value="" /> <!-- uId가 들어가면 mId는 null값 대입 -->
	    			</c:when>
	    			<c:when test="${sessionScope.mName != null}">
	    				<input type="hidden" name="rpWriter" id="rpWriter" value="${sessionScope.mName}" />
	    				<input type="hidden" name="mId" id="mId" value="${sessionScope.mId}" />
	    				<input type="hidden" name="uId" id="uId" value="" />
	    			</c:when>
	    		</c:choose>
        		<label>댓글</label>
	 			<textarea name="rpContents" id="rpContents" class="form-control" rows="5" placeholder="댓글을 입력하세요"></textarea>
	    	</div>
	 	</div>
 		<div class="row">
				<div class="pull-right">
   				<button type="submit" class="btn btn-default" id="replyWriteButton">작성</button>
       		</div>	
   		</div>
   		</c:if>
   		<!-- 로그인을 하지 않았으면 댓글작성 못하게함. -->
   		<c:if test="${sessionScope.uName == null && sessionScope.mName == null}">
   			<div class="row">
   				<div class="form-group">
   					<label>댓글</label>
	 				<textarea name="rpContents" id="rpContents" class="form-control" rows="5" placeholder="로그인 후 이용가능합니다" readonly="readonly"></textarea>
   				</div>
   			</div>
   		</c:if>
    </div>
</div>
</section>

<%@ include file="../common/footer.jsp"%>

<!-- jQuery 사용하기위한 필수선언 -->
<script src="http://code.jquery.com/jquery-latest.js"></script>

<!-- 수정, 삭제관련 js -->
<script src="review/js/review.js"></script>

<!-- 댓글관련 js -->
<script src="review/js/reply.js"></script>

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






