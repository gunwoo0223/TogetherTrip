<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('li').removeClass('active');
		$('li:eq(3)').addClass('active');
	});
	</script>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="user/mypage/img/apple-icon.png" />
	<link rel="icon" type="image/png" href="user/mypage/img/favicon.png" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>REVIEW INFO</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="user/mypage/css/bootstrap.min.css" rel="stylesheet" />

    <!--  Material Dashboard CSS    -->
    <link href="user/mypage/css/material-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="user/mypage/css/demo.css" rel="stylesheet" />

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
</head>

<body>

	<div class="wrapper">
		<%@include file="commonNav.jsp" %>
	    <div class="main-panel">
			<nav class="navbar navbar-transparent navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">작성한 글</a>
					</div>
				</div>
			</nav>

	        <div class="content">
	            <div class="container-fluid">
	                <div class="row">
	                    <div class="col-md-12">
	                        <div class="card">
	                            <div class="card-header" data-background-color="purple">
	                                <h4 class="title">Review Info</h4>
	                                <p class="category">Confirm your writing</p>
	                            </div>
	                            <div class="card-content table-responsive" style="padding-left: 50px;padding-right: 50px;">
	                                <table class="table table-hover">
	                                    <thead>
	                                    	<tr>
		                                    	<th style="width: 10%;">번호</th>
		                                    	<th style="width: 55%;">제목</th>
		                                    	<th style="width: 10%;">작성자</th>
												<th style="width: 15%;">작성일</th>
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
	                            </div>
	                        	<div class="row text-center">
						            <div class="col-lg-12">
						                <ul class="pagination">
							
										
										<!-- 이전버튼 출력 시작 -->
										<c:if test="${pgdto.startPage > 1}">
											<li><a href="reviewInfo.do?currentPage=${pgdto.startPage-pgdto.blockPage}&uId=${sessionScope.uId}">&laquo;</a></li>
										</c:if>
										<!-- 이전 출력 끝 -->
									
										<!-- 페이지 출력 시작 -->
										<c:forEach var="i" begin="${pgdto.startPage}" end="${pgdto.endPage}">
											<c:url var="currPage" value="reviewInfo.do">
												<c:param name="currentPage" value="${i}" />
												<c:param name="uId" value="${sessionScope.uId}" />
											</c:url>
									
											<li><a href="${currPage}"> <c:out value="${i}" /></a></li>
										</c:forEach>
										<!-- 페이지 출력 끝 -->
									
										<!-- 다음버튼 출력 시작 -->
										<c:if test="${pgdto.totalPage>pgdto.endPage}">
											<li><a href="reviewInfo.do?currentPage=${pgdto.startPage+pgdto.blockPage}&uId=${sessionScope.uId}">&raquo;</a></li>
										</c:if>
										<!--  다음 출력 끝 -->
										
									</ul>
								</div>
							</div>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	        

        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Company
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Portfolio
                            </a>
                        </li>
                        <li>
                            <a href="#">
                               Blog
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
                </p>
            </div>
        </footer>
    </div>
</div>

</body>

	<!--   Core JS Files   -->
	<script src="user/mypage/js/jquery-3.1.0.min.js" type="text/javascript"></script>
	<script src="user/mypage/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="user/mypage/js/material.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="user/mypage/js/chartist.min.js"></script>

	<!-- Material Dashboard javascript methods -->
	<script src="user/mypage/js/material-dashboard.js"></script>

	<!-- Material Dashboard DEMO methods, don't include it in your project! -->
	<script src="user/mypage/js/demo.js"></script>

</html>
