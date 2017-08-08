<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="place/css/common.css">
<link rel="stylesheet" href="place/css/content.css">
<link rel="stylesheet" href="place/css/layout.css">
<link rel="stylesheet" href="place/css/3-col-portfolio.css" type="text/css" />
<link rel="stylesheet" href="place/css/bootstrap.min.css" type="text/css" />
<!-- Bootstrap Core CSS -->
<link href="main/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Theme CSS -->
<link href="main/css/freelancer.min.css" rel="stylesheet">
<!-- Bootstrap Core CSS -->
<link href="main/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="main/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

<!-- swiper css -->
<link rel="stylesheet" href="place/css/lightslider.css">
<!-- swiper 기본 세팅 css -->
<link rel="stylesheet" href="place/css/sw_set.css">

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<script type="text/javascript">
	var title = "${map}";
	var sessionUId = "<%=session.getAttribute("uId")%>";
	var sessionMId = "<%=session.getAttribute("mId")%>";

	$(document).ready(function(){
		
		$('.viewMap').click(function(){
		      $.ajax({
		         type:'GET',
		         dataType:'json',
		         url:'change2.do?p_loc='+$('#hid').val(),
		         success:viewMessage,
		         error:function(xhr,textStatus,error){
		            alert(xhr.status);
		         }
		      });
		   });
		
		/* 길찾기 버튼 처리 */
		function viewMessage(data){
		    $.each(data.channel.item,function(index,value){
		       alert('길찾기로 이동합니다.');
		       var lat=value.lat;
		       var lng=value.lng;
		       window.open("http://map.daum.net/link/to/"+$('#hid').val()+","+lat+","+lng);
		   });
		}
	});
</script>

<title>명소 정보</title>

</head>
<body>

	<%@include file="../common/header.jsp"%>

	<section id="portfolio" style="padding-bottom: 0px;">
		<div id="wrap">
			<div id="curtain">
				<div id="container">
					<div id="location">
						<div class="sub_location sub_location_list">
							<div class="wrapper">

								<ul class="location">
									<li><a class="home" href="#">home</a></li>
									<li><a href="pmain.do">어디로 갈까</a></li>
									<li><a href="pmain.do">명소 정보</a></li>

								</ul>
							</div>
						</div>
					</div>
				</div>

				<section id="content" style="padding-bottom: 0px;">
					<!-- 본문 시작 -->

					<div class="viewType2">
						<div class="doc">
							<c:forEach items="${pDetail}" var="dto">
								<div class="cnt_head where">
									<input type="hidden" id="p_num" name="p_num"
										value="${dto.p_num}" />
									<h3 id="content_title">${dto.p_title}</h3>
									<!-- 명소 / 맛집 / 축제 이름 -->
									<ul>
										<li class="look">조회 : ${dto.p_read_count}</li>
										<!-- 조회수 -->
										<li class="likebutton">
											<c:choose>
												<c:when test="${goodCount eq null}">
													<button id="goodBtn" class="go-button" type="button">
														<span id="goodCount">0</span>
													</button>
												</c:when>
												<c:otherwise>
													<button id="goodBtn" class="go-button" type="button">
														<span id="goodCount">${goodCount}</span>
													</button>
												</c:otherwise>
											</c:choose>
										</li>
									</ul>
								</div>
							</c:forEach>

							<div class="thumbWrap">
								<figure>
									<!-- swiper 시작 -->
									<c:forEach items="${pDetail}" var="aa">
										<c:forEach items="${aa.pImage}" var="bb">
											<div class="demo"
												style="margin: 0px; postion = relative; float: left;">
												<div class="item">
													<div class="clearfix" style="max-width: 474px;">
														<ul id="image-gallery"
															class="gallery list-unstyled cS-hidden">
															<li><img src="images/place/${bb.p_img1}" /></li>
															<li><img src="images/place/${bb.p_img2}" /></li>
															<li><img src="images/place/${bb.p_img3}" /></li>
														</ul>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:forEach>
									<!--swiper 종료-->

									<figcaption>
										<c:forEach items="${pDetail}" var="dto">
											<input type="text" id="hid" value="${dto.p_loc}"
												style="visibility: hidden;" />
										</c:forEach>

										<c:forEach items="${pDetail}" var="aa">
											<ul>
												<li><b>위치</b> <span>${aa.p_loc}</span></li>
												<li><b>문의/안내</b> <span>${aa.p_tel}</span></li>
												<li><b>이용시간</b> <span>${aa.p_time}</span></li>
												<li><b>쉬는날</b> <span>${aa.p_holiday}</span></li>
											</ul>
										</c:forEach>
									</figcaption>
									<div class="buttonSet">
										<a class="siteLink" href="#" target="_blank" title="새창으로 열림">공식
											홈페이지</a> <a class="viewMap" title="새창으로 열림">길 찾 기</a>
										<!-- 찜하기 추가 -->

									</div>

									<!--정보수정 버튼 이동-->
								</figure>
							</div>
						</div>
					</div>

					<div id="con_sect">
						<div class="cntBox open">
							<div id="group1" class="grap">
								<ul class="ptList">
								<c:forEach items="${pDetail}" var="aa">
									<li><em>개요</em>${aa.p_contents}<br /> <br /></li>								
								</c:forEach>
								</ul>
							</div>
						</div>
					</div>

					<div id="con_sect4" style="height: 720px;">
						<div class="cntBox">
							<div class="contHead">
								<ul>
								</ul>
							</div>

							<div class="contBody" id="mapDiv1">
								<!-- 하단 파란색 배경에 있는 지도 스크립트 -->
								<%-- <%
								String p_map = (String) request.getAttribute("p_map");
								out.write(p_map);
							%> --%>
								<div id="map" style="width: 100%; width: 1265px; height: 572px;"></div>

								<script type="text/javascript"
									src="//apis.daum.net/maps/maps3.js?apikey=86accb2da2ad262264cf4e4b9a11e9fa&libraries=services"></script>
							</div>
						</div>
					</div>
					<%@include file="../common/footer.jsp"%>
				</section>

			</div>
			
		</div>
		
	</section>
	
	<!-- 좋아요 js -->
	<script src="place/js/good.js"></script>

	<div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
		<a class="btn btn-primary" href="#page-top"><i class="fa fa-chevron-up"></i></a>
	</div>

	<!-- Bootstrap Core JavaScript -->
	<script src="main/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

	<!-- Theme JavaScript -->
	<script src="main/js/freelancer.min.js"></script>

	<script type="text/javascript" src="place/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="place/js/map.js"></script>
	<script type="text/javascript" src="place/js/slider.js"></script>
	<script type="text/javascript" src="place/js/roadview.js"></script>
	<script type="text/javascript" src="place/js/lightslider.min.js"></script>
	<script type="text/javascript" src="place/js/sw_set.js"></script>

</body>
</html>
