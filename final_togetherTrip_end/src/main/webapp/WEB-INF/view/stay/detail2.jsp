<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
.center {
	margin-top: 50px;
}

.modal-header {
	padding-bottom: 5px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}

.modal-footer {
	padding: 0;
	border-bottom-left-radius: 0;
	border-bottom-right-radius: 0
}

.modal-footer .btn-group button {
	height: 40px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
	border: none;
	border-right: 1px solid #ddd;
}

.modal-footer .btn-group:last-child>button {
	border-right: 0;
}
</style>

<link rel="stylesheet" href="festival/css/bootstrap.min.css"
	type="text/css" />
<link href="main/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
	<link href="main/css/freelancer.min.css" rel="stylesheet">
<link href="main/css/bootstrap.min.css" rel="stylesheet">
<link href="main/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="festival/css/common.css">
<link rel="stylesheet" href="festival/css/content.css">
<link rel="stylesheet" href="festival/css/layout.css">
<link rel="stylesheet" href="festival/css/3-col-portfolio.css"
	type="text/css" />
	
<!-- swiper css -->
<link rel="stylesheet" href="festival/css/lightslider.css">
<!-- swiper 기본 세팅 css -->
<link rel="stylesheet" href="festival/css/sw_set.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- sweetalert -->
<link rel="stylesheet" type="text/css" href="stay/dist/sweetalert.css">

<link href="main/css/freelancer.min.css" rel="stylesheet">


<!-- Bootstrap Core CSS -->
    <link href="main/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="main/css/freelancer.min.css" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="main/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="main/css/half-slider.css" rel="stylesheet">
    

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="main/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="main/js/freelancer.min.js"></script>

<script type="text/javascript" src="festival/js/slider.js"></script>
<script type="text/javascript" src="festival/js/lightslider.min.js"></script>
<script type="text/javascript" src="festival/js/sw_set.js"></script>

<!-- <script type="text/javascript" src="festival/js/map.js?ver=821"></script> -->

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="stay/dist/sweetalert.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	
	//위치값을 받아서 좌표로 변환
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
	
	function viewMessage(data){
	 	$.each(data.channel.item,function(index,value){
	 		var lat=value.lat;
	 		var lng=value.lng;
	 		window.open("http://map.daum.net/link/to/"+$('#hid').val()+","+lat+","+lng);
		});
	}
	
	var startDate="";
	var endDate="";
	$("#res_check_in").datepicker({
		dateFormat: 'yy-mm-dd',
		onSelect:function(dateText1,inst1){
			startDate=dateText1;
		}
	});
	var res="";
	var price=$(":radio[name='motel']:checked").val();
	$("#res_check_out").datepicker({
		dateFormat: 'yy-mm-dd',
		onSelect:function(dateText2,inst2){
			//alert(dateText2);
			var endDate=dateText2;
			var FORMAT = "-";
			var start_dt = startDate.split(FORMAT);
			 var end_dt = endDate.split(FORMAT);
			//alert(dateText2);	
			start_dt[1] = (Number(start_dt[1]) - 1) + "";
	        end_dt[1] = (Number(end_dt[1]) - 1) + "";
			//alert(end_dt[2], end_dt[1], end_dt[0]);
	        var from_dt = new Date(start_dt[0], start_dt[1], start_dt[2]);
	        var to_dt = new Date(end_dt[0], end_dt[1], end_dt[2]);
			//alert($("input[type=radio][name=motel]:checked").val());
	        res=(to_dt.getTime() - from_dt.getTime())/1000/60/60/24;
	        $('#datelength').val(res +'일');
	        //$('#res_total_price').val(res*price +'원');
	        return (to_dt.getTime() - from_dt.getTime())/1000/60/60/24;
		}
	});
	
	$("input[type=radio][name=motel]").click(function(){
		$('#res_total_price').val(res*$("input[type=radio][name=motel]:checked").val());
	});
	
	
	$('#reserve').click(function(){
		//sweetalert
		swal({
  			title: "예약하시겠습니까?",
  			text: "You will not be able to recover this imaginary file!",
  			type: "warning",
  			showCancelButton: true,
 			confirmButtonColor: "#DD6B55",
  			confirmButtonText: "결제하기",
  			cancelButtonText: "예약취소",
  			closeOnConfirm: false,
  			closeOnCancel: false
		},
		function(isConfirm){
  			if (isConfirm) {
  				$('#reserveInfo').submit();
  				$(location).attr('href', 'pay.do');
    			//swal("결제창으로이동!", "Your imaginary file has been deleted.", "success");
  			} else {
    			swal("취소되었습니다", "Your imaginary file is safe :)", "error");
  			}
		});
		//$('#reserveInfo').submit();
	});
	
	var title="${map}";
	
});//end script
</script>

</head>

<body>

	<%@ include file="../common/header.jsp"%>

	<section id="portfolio">
		<div id="wrap">

			<div id="curtain">
				<div id="container">
					<div id="location">
						<div class="sub_location sub_location_list">
							<div class="wrapper">

								<ul class="location">
									<li><a class="home" href="#">home</a></li>

									<li><a href="stay.do">숙소</a></li>
									<li><a href="stay.do?s_num=">숙소 정보</a></li>
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
								<input type="hidden" id="s_num" name="s_num" value="${dto.s_num}" />
								<h3 id="content_title">${stay.s_title}</h3>
								<!-- 명소 / 맛집 / 축제 이름 -->
								<ul style="margin-top: -11px;">
									<li class="look">조회 :${stay.s_read_count}</li>
									<!-- 조회수 -->
									<li class="likebutton"><%-- <c:choose>
											<c:when test="${goodCount eq null}">
												<button id="goodBtn" class="go-button" type="button">
													<span id="goodCount">0</span>
												</button>
											</c:when>
											<c:otherwise>
												<span class="hide">추천수</span>
												<!-- 추천수 -->
												<button id="likebtn" class="go-button" type="button">${goodCount}</button>
											</c:otherwise>
										</c:choose> --%></li>
								</ul>
							</div>

							<div class="thumbWrap" style="margin-top: 28px;">
								<figure>

									<!-- swiper 시작 -->

									<div class="demo"
										style="margin: 0px; postion: relative; float: left;">
										<div class="item">
											<div class="clearfix" style="max-width: 474px;">
												<ul id="image-gallery"
													class="gallery list-unstyled cS-hidden">
													<li><img src="${stayImg.s_img1}"></li>
													<li><img src="${stayImg.s_img2}"></li>
													<li><img src="${stayImg.s_img3}"></li>
												</ul>
											</div>
										</div>
									</div>

									<!--swiper 종료-->

									<figcaption>
										<!-- 길찾기할때 위치값 넘기기 위해.. -->
										<input type="text" id="hid" value="${stay.s_loc}"
											style="visibility: hidden;" />
										<ul>
											<li><b>위치</b> <span>${stay.s_loc}</span></li>
											<li><b>문의/안내</b> <span>${stay.s_tel}</span></li>
										</ul>
									</figcaption>

									<div class="buttonSet">
										<!-- <div>
											<button data-toggle="modal" data-target="#squarespaceModal"
											class="btn btn-primary center-block" id="resBtn">예약하기</button>
										</div> -->

										<button data-toggle="modal" data-target="#squarespaceModal"
											class="btn btn-primary center-block" id="resBtn">예약하기</button>

										<a class="siteLink" href="#" target="_blank" title="새창으로 열림">공식
											홈페이지</a> <a class="viewMap" title="새창으로 열림">길 찾 기</a>

									</div>

									<!--정보수정 버튼 이동-->
								</figure>
							</div>
						</div>
					</div>


					<div id="con_sect">
						<div class="cntBox open">
							<div class="title">
								<strong><a class="ov" href="#group1">개요 <span
										class="detail">상세보기</span></a></strong>
							</div>
							<div id="group1" class="grap">
								<ul class="ptList">
									<li><em>예약안내</em> ${stay.s_tel} <br /></li>
									<li><em>상세정보</em>${stay.s_contents}</li>
								</ul>
							</div>
						</div>
						<!-- 객실안내 -->

						<div class="cntBox">
							<div class="title">
								<strong><a href="#group4">객실안내 <span class="detail">상세보기</span></a></strong>
							</div>

							<!-- <div>
								<button data-toggle="modal" data-target="#squarespaceModal"
									class="btn btn-primary center-block" id="resBtn">예약하기</button>
							</div> -->

							<c:choose>
								<c:when test="${motelInfo.s_type=='모텔'}">
									<c:forEach items="${motelInfo.motel}" var="cc">
										<div id="group4" class="grap">
											<div class="room_wrap">
												<!-- hotel type start -->
												<div class="mt1">
													<p class="p_tit">
														<strong>${cc.m_type}</strong>
													</p>
													<div class="room">
														<div class="rImg">
															<!-- rImg -->
															<figure>
																<div class="grap"
																	style="padding-bottom: 0; border: none;">
																	<div class="obj">
																		<img src="${cc.m_image}" alt="엠블호텔 고양_패밀리"
																			id="roomImage2" class="item2"
																			style="position: absolute; top: 0; left: 0; width: 500px; height: 300px" />
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
																		<td>주중: ${cc.m_price}원</td>
																	</tr>
																</tbody>
															</table>
															<p class="t_wa">
																※ 시즌별/투숙율에 따른 탄력적 Rate Table 운영 <br>※ 위 정보는 2017년
																06월에 수정된 정보로(정상요금), 해당 숙박시설 이용요금이 수시로 변동됨에 따라 이용요금 및 기타
																자세한 사항은 홈페이지 참조 요망
															</p>
															<p class="room_info">※ 인원 추가요금: 36,300원(INC)</p>
														</div>
													</div>
												</div>

												<!-- hotel type end -->
											</div>
										</div>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<c:forEach items="${hotelInfo.hotel}" var="list2"
										varStatus="status">
										<div id="group4" class="grap">
											<div class="room_wrap">
												<!-- hotel type start -->
												<div class="mt1">
													<!-- <script type="text/javascript">
										var test=${list2.h_type};
									</script> -->
													<c:set var="test1" value="${status.count}.${list2.h_type}" />
													<p id="index">${status.index}</p>

													<p class="p_tit">
														<strong>${list2.h_type}</strong>
													</p>
													<div class="room">
														<div class="rImg">
															<!-- rImg -->
															<figure>
																<div class="grap"
																	style="padding-bottom: 0; border: none;">
																	<div class="obj">
																		<img src="${list2.h_image}" alt="엠블호텔 고양_패밀리"
																			id="roomImage2" class="item2"
																			style="position: absolute; top: 0; left: 0; width: 500px; height: 300px" />
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
															<p class="t_wa">
																※ 시즌별/투숙율에 따른 탄력적 Rate Table 운영 <br>※ 위 정보는 2017년
																06월에 수정된 정보로(정상요금), 해당 숙박시설 이용요금이 수시로 변동됨에 따라 이용요금 및 기타
																자세한 사항은 홈페이지 참조 요망
															</p>
															<p class="room_info">※ 인원 추가요금: 36,300원(INC)</p>
														</div>
													</div>
												</div>

												<!-- hotel type end -->
											</div>

										</div>
									</c:forEach>
								</c:otherwise>
							</c:choose>

						</div>
					</div>
				</section>

				<div id="con_sect4" style="height: 720px;">
					<div class="cntBox">
						<div class="contHead">
							<ul>
							</ul>
						</div>

						<div class="contBody" id="mapDiv1">

							<!-- 하단 파란색 배경에 있는 지도 스크립트 -->
							<div id="map" style="width: 100%; width: 1265px; height: 572px;"></div>
							<script type="text/javascript"
								src="//apis.daum.net/maps/maps3.js?apikey=86accb2da2ad262264cf4e4b9a11e9fa&libraries=services"></script>
							<!-- 네이버 api 사용으로 하단 지도 사용가능                                                              네이버에서 발급받은 ID 입력하는 곳 -->

						</div>
					</div>
				</div>


			</div>
		</div>
	</section>


<!-- ------------------------------------------- MODAL ------------------------------------------------------ -->

	<!-- line modal -->
	
	<form method="post" action="reserve.do" id="reserveInfo">
		<div class="modal fade" id="squarespaceModal" tabindex="-1"
			role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content"
					style="background-color: rgba(247, 247, 247, 1); width: 450px; height: 700px; overflow: scroll;">
					<div class="modal-header"
						style="border-bottom-color: rgba(189, 189, 189, 1); border-bottom-width: 3px;">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
						<h3 class="modal-title" id="lineModalLabel">예약</h3>
					</div>
					<div class="modal-body">

						<!-- content goes here -->
						<div class="form-group">
							<label for="exampleInputEmail1" style="font-size: 17px">01.
								날짜,인원 선택</label>
							<hr style="border: solid 2px black;" />
							<div>
								<ul>
									<li><label>체크인</label> <input type="text"
										class="datepicker" id="res_check_in" name="res_check_in"
										class="form-control" size="5px"> 
										<!-- <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
																				<!-- </li>
									<li> --> <label>~ 체크아웃</label>
										<input type="text" class="datepicker" id="res_check_out"
										name="res_check_out" value="" size="5px"></li>
									<li><label>숙박일수</label><input type="text"
										class="form-control" id="datelength" /></li>
								</ul>
							</div>
						</div>
						<input type="hidden" name="s_num" value="${stay.s_num}" />
						<div class="form-group">
							<label for="exampleInputPassword1" style="font-size: 17px">02.
								객실/패키지 선택</label><br />
							<hr />
							<c:choose>
								<c:when test="${motelInfo.s_type=='모텔'}">
									<ul>
										<li>
											<script type="text/javascript">
												//var price=${hotelInfo.hotel[0].h_price};
												//var price=$("input[type=radio][name=motel]:checked").val();
											</script>
											<input type="radio" id="motel1" name="motel" value="${motelInfo.motel[0].m_price}">
											<img alt="" src="${motelInfo.motel[0].m_image}" width="400px" height="150px">
											<br />
											<br />
											<p style="font-size: 11px">숙박 : ${motelInfo.s_title}</p>
											<p style="font-size: 11px">객실유형 : ${motelInfo.motel[0].m_type}</p>
										</li>
										<li>
											<script type="text/javascript">
												//var price=${hotelInfo.hotel[1].h_price};
											</script>
											<input type="radio" id="motel2" name="motel" value="${motelInfo.motel[1].m_price}">
											<img alt="" src="${motelInfo.motel[1].m_image}" width="400px" height="150px">
											<br />
											<br />
											<p style="font-size: 11px">숙박 : ${motelInfo.s_title}</p>
											<p style="font-size: 11px">침대타입 : ${motelInfo.motel[1].m_type}</p>
										</li>
									</ul>
									<!-- <script type="text/javascript">
										var price=$("input[type=radio][name=motel]:checked").val();
									</script> -->
								</c:when>
								<c:when test="${hotelInfo.s_type=='호텔'}">
									<ul>
										<li>${hotelInfo.hotel[0].h_type}</li>
										<li>${hotelInfo.hotel[1].h_type}</li>
									</ul>
								</c:when>
							</c:choose>
							
							총 가격 : <input type="text" id="res_total_price" name="res_total_price" style="border: none;">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1" style="font-size: 17px">03.
								예약자 정보</label>
							<hr />
							<table>
								<tbody>
									<tr>
										<th><label>예약자 성명</label></th>
										<td><div>${hotelInfo.s_num}</div></td>
									</tr>
								</tbody>
							</table>
							<input type="text" id="u_id" name="u_id" value="kk" /> <input
								type="text" id="s_num" name="s_num" value="${hotelInfo.s_num}" />
						</div>
						<!-- </form> -->

					</div>
					<div class="modal-footer">
						<div class="btn-group btn-group-justified" role="group"
							aria-label="group button">
							<div class="btn-group" role="group">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" role="button"
									style="background-color: rgb(134, 134, 134);">Close</button>
							</div>
							<div class="btn-group btn-delete hidden" role="group">
								<button type="button" id="delImage"
									class="btn btn-default btn-hover-red" data-dismiss="modal"
									role="button">Delete</button>
							</div>
							<div class="btn-group" role="group">
								<button type="button" id="reserve"
									class="btn btn-default btn-hover-green" data-action="save"
									role="button" style="background-color: rgb(175, 138, 93);">예약하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- ------------------------------------------- MODAL END------------------------------------------------------ -->




	<%@include file="../common/footer.jsp"%>

	<div
		class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
		<a class="btn btn-primary" href="#page-top"> <i
			class="fa fa-chevron-up"></i>
		</a>
	</div>

</body>
</html>