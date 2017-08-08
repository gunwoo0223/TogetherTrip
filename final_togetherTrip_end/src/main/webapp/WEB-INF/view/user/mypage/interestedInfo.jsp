<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('li').removeClass('active');
		$('li:eq(1)').addClass('active');

		/* selectbox에서 선택을 할 때마다 controller를타고 값을 넘겨주는데, 어떤걸 선택했느냐에 따라 어떤게 selected되고, 
		어떤 리스트를 보여줄지 결정하기 때문에 이렇게 적어둔다. 여기는 selected관련 스크립트. */
		var check = "<%= request.getAttribute("check") %>";
		
		if(check == 'place'){
			$('#place').prop('selected', true);
		}else if(check == 'restaurant'){
			$('#restaurant').prop('selected', true);
		}else if(check == 'festival'){
			$('#festival').prop('selected', true);
		}else if(check == 'stay'){
			$('#stay').prop('selected', true);
		}
	});
	</script>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="user/mypage/img/apple-icon.png" />
	<link rel="icon" type="image/png" href="user/mypage/img/favicon.png" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>INTERESTED INFO</title>

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
						<a class="navbar-brand" href="#">관심정보</a>
					</div>
				</div>
			</nav>

	        <div class="content">
	            <div class="container-fluid">
	                <div class="row">
	                    <div class="col-md-12">
	                        <div class="card">
	                            <div class="card-header" data-background-color="purple">
	                                <h4 class="title">Interested Information</h4>
	                                <p class="category">Confirm your like info and choice info</p>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="row">
	                    <div class="col-md-2">
							<div>
								<select class="form-control" name="tab" id="tab" onchange="location = this.value;"> 
									<option value="all">전체</option>
									<option id="place" value="interestedPlace.do?uId=${sessionScope.uId}">명소</option>
									<option id="restaurant" value="interestedRestaurant.do?uId=${sessionScope.uId}">맛집</option>
									<option id="stay" value="interestedStay.do?uId=${sessionScope.uId}">숙소</option>
									<option id="festival" value="interestedFestival.do?uId=${sessionScope.uId}">축제</option> 
								</select>
							</div>
						</div>
	                 </div> 

					<c:choose>
						<c:when test="${check == 'place'}">
							<div class="row">
				                <c:forEach items="${ipList}" var="ipdto">
				                    <div class="col-md-4 portfolio-item">
			                			<a href="#">
			                    			<img class="img-responsive" src="images/place/${ipdto.p_thumbnail}" style="width: 700px; height: 205px;">
			                			</a>
			               			 	<h4>
			                    			<a href="#">${ipdto.p_title}</a>
			                			</h4>
			                			<p>${ipdto.p_loc}</p>
			                			<p>${ipdto.p_tel}</p>
			            			</div>
			            		</c:forEach>
            				</div>
						</c:when>
						<c:when test="${check == 'restaurant'}">
							<div class="row">
				                <c:forEach items="${irList}" var="irdto">
				                    <div class="col-md-4 portfolio-item">
			                			<a href="#">
			                    			<img class="img-responsive" src="images/restaurant/${irdto.r_thumbnail}" style="width: 700px; height: 205px;">
			                			</a>
			               			 	<h4>
			                    			<a href="#">${irdto.r_title}</a>
			                			</h4>
			                			<p>${irdto.r_menu}</p>
			                			<p>${irdto.r_tel}</p>
			            			</div>
			            		</c:forEach>
            				</div>
						</c:when>
						<c:when test="${check == 'festival'}">
							<div class="row">
				                <c:forEach items="${ifList}" var="ifdto">
				                    <div class="col-md-4 portfolio-item">
			                			<a href="#">
			                    			<img class="img-responsive" src="images/festival/${ifdto.f_thumbnail}" style="width: 700px; height: 205px;">
			                			</a>
			               			 	<h4>
			                    			<a href="#">${ifdto.f_title}</a>
			                			</h4>
			                			<p>${ifdto.f_time}</p>
			                			<p>${ifdto.f_loc}</p>
			            			</div>
			            		</c:forEach>
            				</div>
						</c:when>
						<c:when test="${check == 'stay'}">
							<div class="row">
				                <c:forEach items="${isList}" var="isdto">
				                    <div class="col-md-4 portfolio-item">
			                			<a href="#">
			                    			<img class="img-responsive" src="images/stay/${isdto.s_thumbnail}" style="width: 700px; height: 205px;">
			                			</a>
			               			 	<h4>
			                    			<a href="#">${isdto.s_title}</a>
			                			</h4>
			                			<p>${isdto.s_loc}</p>
			                			<p>${isdto.s_tel}</p>
			            			</div>
			            		</c:forEach>
            				</div>
						</c:when>
					</c:choose>	                
	            </div>
	        </div>
	        
		    <!-- Pagination -->
		    <c:choose>
		    	<c:when test="${check == 'place'}">
		    		<div class="row text-center">
			    		<div class="col-lg-12">
				    		<ul class="pagination">
						
							<!-- 이전버튼 출력 시작 -->
							<c:if test="${pgdto.startPage > 1}">
								<li><a href="interestedPlace.do?currentPage=${pgdto.startPage-pgdto.blockPage}&uId=${sessionScope.uId}">&laquo;</a></li>
							</c:if>
							<!-- 이전 출력 끝 -->
						
							<!-- 페이지 출력 시작 -->
							<c:forEach var="i" begin="${pgdto.startPage}" end="${pgdto.endPage}">
								<c:url var="currPage" value="interestedPlace.do">
									<c:param name="currentPage" value="${i}" />
									<c:param name="uId" value="${sessionScope.uId}" />
								</c:url>
						
								<li><a href="${currPage}"> <c:out value="${i}" /></a></li>
							</c:forEach>
							<!-- 페이지 출력 끝 -->
						
							<!-- 다음버튼 출력 시작 -->
							<c:if test="${pgdto.totalPage>pgdto.endPage}">
								<li><a href="interestedPlace.do?currentPage=${pgdto.startPage+pgdto.blockPage}&uId=${sessionScope.uId}">&raquo;</a></li>
							</c:if>
							<!--  다음 출력 끝 -->
			
						</ul>
					</div>
				</div>
		    	</c:when>
		    	<c:when test="${check == 'restaurant'}">
		    		<div class="row text-center">
			    		<div class="col-lg-12">
				    		<ul class="pagination">
						
							<!-- 이전버튼 출력 시작 -->
							<c:if test="${pgdto.startPage > 1}">
								<li><a href="interestedRestaurant.do?currentPage=${pgdto.startPage-pgdto.blockPage}&uId=${sessionScope.uId}">&laquo;</a></li>
							</c:if>
							<!-- 이전 출력 끝 -->
						
							<!-- 페이지 출력 시작 -->
							<c:forEach var="i" begin="${pgdto.startPage}" end="${pgdto.endPage}">
								<c:url var="currPage" value="interestedRestaurant.do">
									<c:param name="currentPage" value="${i}" />
									<c:param name="uId" value="${sessionScope.uId}" />
								</c:url>
						
								<li><a href="${currPage}"> <c:out value="${i}" /></a></li>
							</c:forEach>
							<!-- 페이지 출력 끝 -->
						
							<!-- 다음버튼 출력 시작 -->
							<c:if test="${pgdto.totalPage>pgdto.endPage}">
								<li><a href="interestedRestaurant.do?currentPage=${pgdto.startPage+pgdto.blockPage}&uId=${sessionScope.uId}">&raquo;</a></li>
							</c:if>
							<!--  다음 출력 끝 -->
			
						</ul>
					</div>
				</div>
		    	</c:when>
		    	<c:when test="${check == 'festival'}">
		    		<div class="row text-center">
			    		<div class="col-lg-12">
				    		<ul class="pagination">
						
							<!-- 이전버튼 출력 시작 -->
							<c:if test="${pgdto.startPage > 1}">
								<li><a href="interestedFestival.do?currentPage=${pgdto.startPage-pgdto.blockPage}&uId=${sessionScope.uId}">&laquo;</a></li>
							</c:if>
							<!-- 이전 출력 끝 -->
						
							<!-- 페이지 출력 시작 -->
							<c:forEach var="i" begin="${pgdto.startPage}" end="${pgdto.endPage}">
								<c:url var="currPage" value="interestedFestival.do">
									<c:param name="currentPage" value="${i}" />
									<c:param name="uId" value="${sessionScope.uId}" />
								</c:url>
						
								<li><a href="${currPage}"> <c:out value="${i}" /></a></li>
							</c:forEach>
							<!-- 페이지 출력 끝 -->
						
							<!-- 다음버튼 출력 시작 -->
							<c:if test="${pgdto.totalPage>pgdto.endPage}">
								<li><a href="interestedFestival.do?currentPage=${pgdto.startPage+pgdto.blockPage}&uId=${sessionScope.uId}">&raquo;</a></li>
							</c:if>
							<!--  다음 출력 끝 -->
			
						</ul>
					</div>
				</div>
		    	</c:when>
		    	<c:when test="${check == 'stay'}">
		    		<div class="row text-center">
			    		<div class="col-lg-12">
				    		<ul class="pagination">
						
							<!-- 이전버튼 출력 시작 -->
							<c:if test="${pgdto.startPage > 1}">
								<li><a href="interestedStay.do?currentPage=${pgdto.startPage-pgdto.blockPage}&uId=${sessionScope.uId}">&laquo;</a></li>
							</c:if>
							<!-- 이전 출력 끝 -->
						
							<!-- 페이지 출력 시작 -->
							<c:forEach var="i" begin="${pgdto.startPage}" end="${pgdto.endPage}">
								<c:url var="currPage" value="interestedStay.do">
									<c:param name="currentPage" value="${i}" />
									<c:param name="uId" value="${sessionScope.uId}" />
								</c:url>
						
								<li><a href="${currPage}"> <c:out value="${i}" /></a></li>
							</c:forEach>
							<!-- 페이지 출력 끝 -->
						
							<!-- 다음버튼 출력 시작 -->
							<c:if test="${pgdto.totalPage>pgdto.endPage}">
								<li><a href="interestedStay.do?currentPage=${pgdto.startPage+pgdto.blockPage}&uId=${sessionScope.uId}">&raquo;</a></li>
							</c:if>
							<!--  다음 출력 끝 -->
			
						</ul>
					</div>
				</div>
		    	</c:when>
		    </c:choose>
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
