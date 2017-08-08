<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="X-UA-Comatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="stay/css/common.css">
<link rel="stylesheet" href="stay/css/content.css">
<link rel="stylesheet" href="stay/css/layout.css">
<link rel="stylesheet" href="stay/css/lightslider.css">
<link rel="stylesheet" href="stay/css/sw_set.css">

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script type="text/javascript"
	src="stay/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="stay/js/map.js"></script>
<script type="text/javascript" src="stay/js/slider.js"></script>
<script type="text/javascript" src="stay/js/roadview.js"></script>
<script type="text/javascript"
	src="stay/js/lightslider.min.js"></script>
<script type="text/javascript" src="stay/js/sw_set.js"></script>
<script type="text/javascript">
$(document).ready(function(){

	$('.viewMap').click(function(){
		$.ajax({
			type:'GET',
			dataType:'json',
			url:'change.do?s_loc='+$('#hid').val(),
			success:viewMessage,
			error:function(xhr,textStatus,error){
				alert(xhr.status);
			}
		});
	});
});

function viewMessage(data){
 	$.each(data.channel.item,function(index,value){
 		var lat=value.lat;
 		var lng=value.lng;
 		window.open("http://map.daum.net/link/to/"+$('#hid').val()+","+lat+","+lng);
	});
}
</script>


<title>숙소 상세정보</title>
</head>

<body>

	<div id="curtain">
		<div id="container">
			<div id="location">
				<div class="sub_location sub_location_list">
					<div class="wrapper">

						<ul class="location">
							<li><a class="home" href="#">home</a></li>

							<li><a href="#">어디서 잘까</a></li>
							<li><a href="#">숙박업소정보</a></li>
						</ul>

					</div>
				</div>
			</div>
		</div>

		<section id="content" style="padding-bottom: 0px;">
			<!-- 본문 시작 -->

			<div class="viewType2">
				<div class="doc">
					<div class="cnt_head where">
						<h3 id="content_title">${stay.s_title}</h3>
						<ul>
							<li class="look">조회 : ${stay.s_read_count}</li>
							<li class="likebutton"><span class="hide">추천수</span>
								<button onclick="increaseCMSLikeCount('2496500'); return false;"
									id="likebtn" class="go-button" type="button">0</button></li>
						</ul>
					</div>
					<div class="thumbWrap">
						<figure>

							<div class="demo"
								style="margin: 0px; postion = relative; float: left;">
								<div class="item">
									<div class="clearfix" style="max-width: 474px;">
										<!-- stay_img 테이블에 있는 사진을 순서대로 받아온다. -->
										<c:forEach items="${stay.imgList}" var="list">
											<ul id="image-gallery" class="gallery list-unstyled cS-hidden">
												<li><img src="${list.s_img1}" /></li>
												<li><img src="${list.s_img2}" /></li>
												<li><img src="${list.s_img3}" /></li>
											<!-- 이미지는 img src="" 부분에 경로 입력 -->
											</ul>
										</c:forEach>
									</div>
								</div>
							</div>

							<figcaption>
								<input type="text" id="hid" value="${stay.s_loc}" style="visibility: hidden;"/>
								<ul>
									<li><b>위치</b> <span>${stay.s_loc}</span></li>
									<li><b>연락처</b> <span>${stay.s_tel}</span></li>
									<li><b>객실수</b> <span>377실</span></li>
								</ul>

							</figcaption>
							<div class="buttonSet">
									<a class="siteLink" href="#" target="_blank" title="새창으로 열림">공식홈페이지</a> 
									<a href="#" class="viewMap" title="새창으로 열림">길 찾 기</a> 
									<a href="#" class="tourInfo" >찜 하 기</a>
									<!-- 찜하기 추가 -->
							</div>
						</figure>
					</div>
				</div>
			</div>
			
			<!-- 개요 -->

			<div id="con_sect">
				<div class="cntBox open">
					<div class="title">
						<strong><a class="ov" href="#group1">개요 <span
								class="detail">상세보기</span></a></strong>
					</div>
					<div id="group1" class="grap">
						<ul class="ptList">
							<li><em>개요</em>
								<p>${stay.s_contents}</p></li>

							<li><em>예약안내</em> ${stay.s_tel} <br /></li> 
						</ul>
					</div>
				</div>
				
				
			    <!-- 객실안내 -->
				
				<div class="cntBox">
					<div class="title">
						<strong><a href="#group4">객실안내 <span class="detail">상세보기</span></a></strong>
					</div>
					<div id="group4" class="grap">
						<div class="room_wrap">
						
							<!-- hotel type start -->
							<c:forEach items="${hotelInfo.hotel}" var="list2">
							<div class="mt1">
								<p class="p_tit">
									<strong>${list2.h_type}</strong>
								</p>
								<div class="room">
									<div class="rImg">
										<!-- rImg -->
										<figure>
											<div class="grap" style="padding-bottom: 0; border: none;">
												<div class="obj">
													<img
														src="${list2.h_image}"
														alt="엠블호텔 고양_패밀리" id="roomImage2" class="item2"
														style="position: absolute; top: 0; left: 0;" />
												</div>
											</div>
										</figure>
									</div>
									<!-- rImg -->
									<div class="tableDiv03">
										<!-- tableDiv03 -->
										<table class="basic_table center">
											<caption>
												<strong>객실정보 상세 표</strong>
											</caption>
											<colgroup>
												<col span="5">
											</colgroup>
											<thead>
												<tr>
													<th scope="col" rowspan="2">면적(㎡)</th>
													<th scope="col" rowspan="2">숙박인원<br>기준최대
													</th>
													<th scope="col" colspan="3">요금(1박 기준)</th>
												</tr>
												<tr>
													<th scope="col">비수기</th>
													<th scope="col">성수기</th>
													<th scope="col">일 반</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>30m² / 60개</td>
													<td>2명 / 3명</td>
													<td class="t_brown"><br></td>
													<td class="t_brown"><br></td>
													<td>주중: ${list2.h_price}원 <br> 주말: 544,500원

													</td>
												</tr>
											</tbody>
										</table>
										<ul>

											<li><img
												src="http://tong.visitkorea.or.kr/kor/images/ti/lodging/stay_icon_s_10.gif"
												alt="목욕시설"></li>


											<li><img
												src="http://tong.visitkorea.or.kr/kor/images/ti/lodging/stay_icon_s_4.gif"
												alt="에어컨"></li>
											<li><img
												src="http://tong.visitkorea.or.kr/kor/images/ti/lodging/stay_icon_s_1.gif"
												alt="TV"></li>

											<li><img
												src="http://tong.visitkorea.or.kr/kor/images/ti/lodging/stay_icon_s_7.gif"
												alt="케이블설치"></li>
											<li><img
												src="http://tong.visitkorea.or.kr/kor/images/ti/lodging/stay_icon_s_6.gif"
												alt="인터넷"></li>
											<li><img
												src="http://tong.visitkorea.or.kr/kor/images/ti/lodging/stay_icon_s_3.gif"
												alt="냉장고"></li>
											<li><img
												src="http://tong.visitkorea.or.kr/kor/images/ti/lodging/stay_icon_s_12.gif"
												alt="세면도구"></li>
											<li><img
												src="http://tong.visitkorea.or.kr/kor/images/ti/lodging/stay_icon_s_8.gif"
												alt="소파"></li>

										</ul>
									</div>

								</div>
								<p class="t_wa">
									※ 시즌별/투숙율에 따른 탄력적 Rate Table 운영 <br>※ 위 정보는 2017년 06월에 수정된
									정보로(정상요금), 해당 숙박시설 이용요금이 수시로 변동됨에 따라 이용요금 및 기타 자세한 사항은 홈페이지 참조
									요망
								</p>
								<p class="room_info">※ 인원 추가요금: 36,300원(INC)</p>
							</div>
							
							<div>
								<a href="reservation.do?s_num=${hotelInfo.s_num}">예약하기</a>
							</div>
							</c:forEach>
							<!-- hotel type end -->
						</div>
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

						<!-- * 네이버 맵 로드 *  -->
						<script type="text/javascript"
							src="https://openapi.map.naver.com/openapi/v2/maps.js?clientId=M5dKL5olGfYMzhTYiJBZ"></script>
						<!-- 네이버 맵 로드 -->
						<div class="map" id="map12"></div>

					</div>
				</div>
			</div>

		</section>
	</div>

	<footer id="footer">
		<div class="go-layout">
			<address id="published">
				<p>
					우)26464 강원도 원주시 세계로 10 | TEL : 033-738-3000<br /> 사업자등록번호 :
					202-81-50707 | 통신판매업신고 : 제2009-서울중구-1234호
				</p>
				<p>COPYRIGHT &copy; 2015 KOREA TOURISM ORGANIZATION. ALL RIGHTS
					RESERVED.</p>
			</address>
		</div>
	</footer>
</body>
</html>
