<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한눈에 보기</title>

<!-- Theme CSS -->
<link href="main/css/freelancer.min.css" rel="stylesheet">

<!-- Bootstrap Core CSS -->
<link href="main/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="allSearch/css/3-col-portfolio.css" rel="stylesheet">
<link href="allSearch/css/common2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="main/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googl
eapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.0.0.js"></script>

<script type="text/javascript">
	
</script>
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<section id="portfolio" style="padding: 0; margin-top: 100px;">

		<!-- Resend Value -->
		<input type="hidden" value="${topicStr}" id="topicList" />

		<c:forEach items="${chkAllArea}" var="list" end="0">
			<c:choose>
				<c:when test="${list.state != null}">
					<input type="hidden" value="${list.state}" id="state" />
					<input type="hidden" value="전체" id="city" />
				</c:when>
				<c:when test="${list.p_state != null}">
					<input type="hidden" value="${list.p_state}" id="state" />
					<input type="hidden" value="전체" id="city" />
				</c:when>
				<c:when test="${list.r_state != null}">
					<input type="hidden" value="${list.r_state}" id="state" />
					<input type="hidden" value="전체" id="city" />
				</c:when>
				<c:when test="${list.s_state != null}">
					<input type="hidden" value="${list.s_state}" id="state" />
					<input type="hidden" value="전체" id="city" />
				</c:when>
				<c:when test="${list.f_state != null}">
					<input type="hidden" value="${list.f_state}" id="state" />
					<input type="hidden" value="전체" id="city" />
				</c:when>
			</c:choose>
		</c:forEach>

		<c:forEach items="${chkArea}" var="list" end="0">
			<c:choose>
				<c:when test="${list.city != null}">
					<input type="hidden" value="${list.state}" id="state" />
					<input type="hidden" value="${list.city}" id="city" />
				</c:when>
				<c:when test="${list.p_city != null}">
					<input type="hidden" value="${list.p_state}" id="state" />
					<input type="hidden" value="${list.p_city}" id="city" />
				</c:when>
				<c:when test="${list.r_city != null}">
					<input type="hidden" value="${list.r_state}" id="state" />
					<input type="hidden" value="${list.r_city}" id="city" />
				</c:when>
				<c:when test="${list.s_city != null}">
					<input type="hidden" value="${list.s_state}" id="state" />
					<input type="hidden" value="${list.s_city}" id="city" />
				</c:when>
				<c:when test="${list.f_city != null}">
					<input type="hidden" value="${list.f_state}" id="state" />
					<input type="hidden" value="${list.f_city}" id="city" />
				</c:when>
			</c:choose>
		</c:forEach>

		<!-- location -->
		<div id="container-top">
			<div id="location">
				<div class="sub_location sub_location_list">
					<div class="wrapper">
						<ul class="location">
							<li><a class="home" href="#">home</a></li>
							<li><a href="allSearch.do">어디를 갈까</a></li>
							<li><a href="#">한눈에 보기</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<!-- Page Content -->
		<div class="container">
			<!-- Tabs -->
			<h2 class="demoHeaders">한눈에 보기</h2>
			<div class="tabs">
				<ul>
					<c:forEach items="${chkTopic}" var="searchTopic">
						<c:if test="${searchTopic == 'all'}">
							<li><a href="#tabs-1" id="all">전 체</a></li>
						</c:if>
						<c:if test="${searchTopic == 'place'}">
							<li><a href="#tabs-2" id="place">명 소</a></li>
						</c:if>
						<c:if test="${searchTopic == 'restaurant'}">
							<li><a href="#tabs-3" id="restaurant">음 식</a></li>
						</c:if>
						<c:if test="${searchTopic == 'stay'}">
							<li><a href="#tabs-4" id="stay">숙 박</a></li>
						</c:if>
						<c:if test="${searchTopic == 'festival'}">
							<li><a href="#tabs-5" id="festival">축 제</a></li>
						</c:if>
					</c:forEach>
				</ul>
				<c:if test="${topic == 'all'}">
					<div id="tabs-1">
						<!-- Page Header -->
						<div class="row">
							<div class="col-lg-12">
								<h1 class="page-header">
									전체 보기 <small> <c:forEach items="${chkAllArea}"
											var="list" end="0">
										${list.state}
									</c:forEach> <c:forEach items="${chkArea}" var="list" end="0">
										${list.city}
									</c:forEach>전체
									</small>
								</h1>
							</div>
						</div>
						<!-- /.row -->
						<!-- Projects Row -->
						<div class="row">
							<c:forEach items="${chkAllArea}" var="list" begin="0" end="3">
								<div class="col-md-3 portfolio-item">
									<a href="#"> <img class="img-responsive"
										src="${list.thumbnail}" alt="">
									</a>
									<h3>
										<a href="#">${list.title}</a>
									</h3>
									<p>${list.tel}</p>
									<p>${list.loc}</p>
								</div>
							</c:forEach>
							<c:forEach items="${chkArea}" var="list" begin="0" end="3">
								<div class="col-md-3 portfolio-item">
									<a href="#"> <img class="img-responsive"
										src="${list.thumbnail}" alt="">
									</a>
									<h3>
										<a href="#">${list.title}</a>
									</h3>
									<p>${list.tel}</p>
									<p>${list.loc}</p>
								</div>
							</c:forEach>
						</div>
						<!-- /.row -->

						<!-- Projects Row -->
						<div class="row">
							<c:forEach items="${chkAllArea}" var="list" begin="4" end="7">
								<div class="col-md-3 portfolio-item">
									<a href="#"> <img class="img-responsive"
										src="${list.thumbnail}" alt="">
									</a>
									<h3>
										<a href="#">${list.title}</a>
									</h3>
									<p>${list.tel}</p>
									<p>${list.loc}</p>
								</div>
							</c:forEach>
							<c:forEach items="${chkArea}" var="list" begin="4" end="7">
								<div class="col-md-3 portfolio-item">
									<a href="#"> <img class="img-responsive"
										src="${list.thumbnail}" alt="">
									</a>
									<h3>
										<a href="#">${list.title}</a>
									</h3>
									<p>${list.tel}</p>
									<p>${list.loc}</p>
								</div>
							</c:forEach>
						</div>

						<!-- Projects Row -->
						<div class="row">
							<c:forEach items="${chkAllArea}" var="list" begin="8" end="11">
								<div class="col-md-3 portfolio-item">
									<a href="#"> <img class="img-responsive"
										src="${list.thumbnail}" alt="">
									</a>
									<h3>
										<a href="#">${list.title}</a>
									</h3>
									<p>${list.tel}</p>
									<p>${list.loc}</p>
								</div>
							</c:forEach>
							<c:forEach items="${chkArea}" var="list" begin="8" end="11">
								<div class="col-md-3 portfolio-item">
									<a href="#"> <img class="img-responsive"
										src="${list.thumbnail}" alt="">
									</a>
									<h3>
										<a href="#">${list.title}</a>
									</h3>
									<p>${list.tel}</p>
									<p>${list.loc}</p>
								</div>
							</c:forEach>
						</div>
						<!-- /.row -->

						<hr>

						<!-- Pagination -->
						<div class="row text-center">
							<div class="col-lg-12">
								<ul class="pagination">
									<c:if test="${pv.startPage > 1}">
										<li><a
											href="searchResult.do?currentPage=${pv.startPage - pv.blockPage}&topic=all&state=${state}&city=${city}&topicList=${topicStr}">&laquo;</a>
										</li>
									</c:if>

									<c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
										<c:url var="currPage" value="searchResult.do">
											<c:param name="currentPage" value="${i}" />
											<c:param name="topic" value="all" />

											<c:forEach items="${chkAllArea}" var="list" end="0">
												<c:choose>
													<c:when test="${list.state != null}">
														<c:param name="state" value="${list.state}" />
														<c:param name="city" value="전체" />
														<c:param name="topicList" value="${topicStr}" />
													</c:when>
												</c:choose>
											</c:forEach>
											<c:forEach items="${chkArea}" var="list" end="0">
												<c:choose>
													<c:when test="${list.city != null}">
														<c:param name="state" value="${list.state}" />
														<c:param name="city" value="${list.city}" />
														<c:param name="topicList" value="${topicStr}" />
													</c:when>
												</c:choose>
											</c:forEach>
										</c:url>
										<li><a href="${currPage}">${i}</a></li>
									</c:forEach>

									<c:if test="${pv.totalPage > pv.endPage}">
										<li><a
											href="searchResult.do?currentPage=${pv.startPage + pv.blockPage}&topic=all&state=${state}&city=${city}&topicList=${topicStr}">&raquo;</a></li>
									</c:if>
								</ul>
							</div>
						</div>
						<!-- /.row -->
					</div>
				</c:if>
				<c:if test="${topic == 'place'}">
					<div id="tabs-2">
						<!-- Page Header -->
						<div class="row">
							<div class="col-lg-12">
								<h1 class="page-header">
									명소 보기 <small> <c:forEach items="${chkAllArea}"
											var="list" end="0">
										${list.p_state}
										전체
									</c:forEach> <c:forEach items="${chkArea}" var="list" end="0">
										${list.p_state}
										${list.p_city}
									</c:forEach></small>
								</h1>
							</div>
						</div>
						<!-- /.row -->

						<!-- Projects Row -->
						<div class="row">
							<c:forEach items="${chkAllArea}" var="list" begin="0" end="3">
								<div class="col-md-3 portfolio-item">
									<a href="place.do?p_num=${list.p_num}"> <img class="img-responsive"
										src="${list.p.thumbnail}" alt="">
									</a>
									<h3>
										<a href="place.do?p_num=${list.p_num}">${list.p_title}</a>
									</h3>
									<p>${list.p_state}</p>
									<p>${list.p_tel}</p>
									<p>${list.p_loc}</p>
								</div>
							</c:forEach>
							<c:forEach items="${chkArea}" var="list" begin="0" end="3">
								<div class="col-md-3 portfolio-item">
									<a href="place.do?p_num=${list.p_num}"> <img class="img-responsive"
										src="${list.p.thumbnail}" alt="">
									</a>
									<h3>
										<a href="place.do?p_num=${list.p_num}">${list.p_title}</a>
									</h3>
									<p>${list.p_state}</p>
									<p>${list.p_tel}</p>
									<p>${list.p_loc}</p>
								</div>
							</c:forEach>
						</div>
						<!-- /.row -->

						<!-- Projects Row -->
						<div class="row">
							<c:forEach items="${chkAllArea}" var="list" begin="4" end="7">
								<div class="col-md-3 portfolio-item">
									<a href="place.do?p_num=${list.p_num}"> <img class="img-responsive"
										src="${list.p.thumbnail}" alt="">
									</a>
									<h3>
										<a href="place.do?p_num=${list.p_num}">${list.p_title}</a>
									</h3>
									<p>${list.p_state}</p>
									<p>${list.p_tel}</p>
									<p>${list.p_loc}</p>
								</div>
							</c:forEach>
							<c:forEach items="${chkArea}" var="list" begin="4" end="7">
								<div class="col-md-3 portfolio-item">
									<a href="place.do?p_num=${list.p_num}"> <img class="img-responsive"
										src="${list.p.thumbnail}" alt="">
									</a>
									<h3>
										<a href="place.do?p_num=${list.p_num}">${list.p_title}</a>
									</h3>
									<p>${list.p_state}</p>
									<p>${list.p_tel}</p>
									<p>${list.p_loc}</p>
								</div>
							</c:forEach>
						</div>

						<!-- Projects Row -->
						<div class="row">
							<c:forEach items="${chkAllArea}" var="list" begin="8" end="11">
								<div class="col-md-3 portfolio-item">
									<a href="place.do?p_num=${list.p_num}"> <img class="img-responsive"
										src="${list.p.thumbnail}" alt="">
									</a>
									<h3>
										<a href="place.do?p_num=${list.p_num}">${list.p_title}</a>
									</h3>
									<p>${list.p_state}</p>
									<p>${list.p_tel}</p>
									<p>${list.p_loc}</p>
								</div>
							</c:forEach>
							<c:forEach items="${chkArea}" var="list" begin="8" end="11">
								<div class="col-md-3 portfolio-item">
									<a href="place.do?p_num=${list.p_num}"> <img class="img-responsive"
										src="${list.p.thumbnail}" alt="">
									</a>
									<h3>
										<a href="place.do?p_num=${list.p_num}">${list.p_title}</a>
									</h3>
									<p>${list.p_state}</p>
									<p>${list.p_tel}</p>
									<p>${list.p_loc}</p>
								</div>
							</c:forEach>
						</div>
						<!-- /.row -->

						<hr>

						<!-- Pagination -->
						<div class="row text-center">
							<div class="col-lg-12">
								<ul class="pagination">
									<c:if test="${pv.startPage > 1}">
										<li><a
											href="searchResult.do?currentPage=${pv.startPage - pv.blockPage}&topic=place&state=${state}&city=${city}&topicList=${topicStr}">&laquo;</a>
										</li>
									</c:if>

									<c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
										<c:url var="currPage" value="searchResult.do">
											<c:param name="currentPage" value="${i}" />
											<c:param name="topic" value="place" />

											<c:forEach items="${chkAllArea}" var="list" end="0">
												<c:choose>
													<c:when test="${list.p_state != null}">
														<c:param name="state" value="${list.p_state}" />
														<c:param name="city" value="전체" />
														<c:param name="topicList" value="${topicStr}" />
													</c:when>
												</c:choose>
											</c:forEach>
											<c:forEach items="${chkArea}" var="list" end="0">
												<c:choose>
													<c:when test="${list.p_city != null}">
														<c:param name="state" value="${list.p_state}" />
														<c:param name="city" value="${list.p_city}" />
														<c:param name="topicList" value="${topicStr}" />
													</c:when>
												</c:choose>
											</c:forEach>
										</c:url>
										<li><a href="${currPage}">${i}</a></li>
									</c:forEach>

									<c:if test="${pv.totalPage > pv.endPage}">
										<li><a
											href="searchResult.do?currentPage=${pv.startPage + pv.blockPage}&topic=place&state=${state}&city=${city}&topicList=${topicStr}">&raquo;</a></li>
									</c:if>
								</ul>
							</div>
						</div>
						<!-- /.row -->
					</div>
				</c:if>
				<c:if test="${topic == 'restaurant'}">
					<div id="tabs-3">
						<!-- Page Header -->
						<div class="row">
							<div class="col-lg-12">
								<h1 class="page-header">
									맛집 보기 <small> <c:forEach items="${chkAllArea}"
											var="list" end="0">
										${list.r_state}
										전체
									</c:forEach> <c:forEach items="${chkArea}" var="list" end="0">
										${list.r_state}
										${list.r_city}
									</c:forEach></small>
								</h1>
							</div>
						</div>
						<!-- /.row -->

						<!-- Projects Row -->
						<div class="row">
							<c:forEach items="${chkAllArea}" var="list" begin="0" end="3">
								<div class="col-md-3 portfolio-item">
									<a href="res.do?r_num=${list.r_num}"> <img class="img-responsive"
										src="${list.r.thumbnail}" alt="">
									</a>
									<h3>
										<a href="res.do?r_num=${list.r_num}">${list.r_title}</a>
									</h3>
									<p>${list.r_tel}</p>
									<p>${list.r_loc}</p>
								</div>
							</c:forEach>
							<c:forEach items="${chkArea}" var="list" begin="0" end="3">
								<div class="col-md-3 portfolio-item">
									<a href="res.do?r_num=${list.r_num}"> <img class="img-responsive"
										src="${list.r.thumbnail}" alt="">
									</a>
									<h3>
										<a href="res.do?r_num=${list.r_num}">${list.r_title}</a>
									</h3>
									<p>${list.r_tel}</p>
									<p>${list.r_loc}</p>
								</div>
							</c:forEach>
						</div>
						<!-- /.row -->

						<!-- Projects Row -->
						<div class="row">
							<c:forEach items="${chkAllArea}" var="list" begin="4" end="7">
								<div class="col-md-3 portfolio-item">
									<a href="res.do?r_num=${list.r_num}"> <img class="img-responsive"
										src="${list.r.thumbnail}" alt="">
									</a>
									<h3>
										<a href="res.do?r_num=${list.r_num}">${list.r_title}</a>
									</h3>
									<p>${list.r_tel}</p>
									<p>${list.r_loc}</p>
								</div>
							</c:forEach>
							<c:forEach items="${chkArea}" var="list" begin="4" end="7">
								<div class="col-md-3 portfolio-item">
									<a href="res.do?r_num=${list.r_num}"> <img class="img-responsive"
										src="${list.r.thumbnail}" alt="">
									</a>
									<h3>
										<a href="res.do?r_num=${list.r_num}">${list.r_title}</a>
									</h3>
									<p>${list.r_tel}</p>
									<p>${list.r_loc}</p>
								</div>
							</c:forEach>
						</div>

						<!-- Projects Row -->
						<div class="row">
							<c:forEach items="${chkAllArea}" var="list" begin="8" end="11">
								<div class="col-md-3 portfolio-item">
									<a href="res.do?r_num=${list.r_num}"> <img class="img-responsive"
										src="${list.r.thumbnail}" alt="">
									</a>
									<h3>
										<a href="res.do?r_num=${list.r_num}">${list.r_title}</a>
									</h3>
									<p>${list.r_tel}</p>
									<p>${list.r_loc}</p>
								</div>
							</c:forEach>
							<c:forEach items="${chkArea}" var="list" begin="8" end="11">
								<div class="col-md-3 portfolio-item">
									<a href="res.do?r_num=${list.r_num}"> <img class="img-responsive"
										src="${list.r.thumbnail}" alt="">
									</a>
									<h3>
										<a href="res.do?r_num=${list.r_num}">${list.r_title}</a>
									</h3>
									<p>${list.r_tel}</p>
									<p>${list.r_loc}</p>
								</div>
							</c:forEach>
						</div>
						<!-- /.row -->

						<hr>

						<!-- Pagination -->
						<div class="row text-center">
							<div class="col-lg-12">
								<ul class="pagination">
									<c:if test="${pv.startPage > 1}">
										<li><a
											href="searchResult.do?currentPage=${pv.startPage - pv.blockPage}&topic=restaurant&state=${state}&city=${city}&topicList=${topicStr}">&laquo;</a>
										</li>
									</c:if>

									<c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
										<c:url var="currPage" value="searchResult.do">
											<c:param name="currentPage" value="${i}" />
											<c:param name="topic" value="restaurant" />
											<c:forEach items="${chkAllArea}" var="list" end="0">
												<c:choose>
													<c:when test="${list.r_state != null}">
														<c:param name="state" value="${list.r_state}" />
														<c:param name="city" value="전체" />
														<c:param name="topicList" value="${topicStr}" />
													</c:when>
												</c:choose>
											</c:forEach>
											<c:forEach items="${chkArea}" var="list" end="0">
												<c:choose>
													<c:when test="${list.r_city != null}">
														<c:param name="state" value="${list.r_state}" />
														<c:param name="city" value="${list.r_city}" />
														<c:param name="topicList" value="${topicStr}" />
													</c:when>
												</c:choose>
											</c:forEach>
										</c:url>
										<li><a href="${currPage}">${i}</a></li>
									</c:forEach>

									<c:if test="${pv.totalPage > pv.endPage}">
										<li><a
											href="searchResult.do?currentPage=${pv.startPage + pv.blockPage}&topic=restaurant&state=${state}&city=${city}&topicList=${topicStr}">&raquo;</a></li>
									</c:if>
								</ul>
							</div>
						</div>
						<!-- /.row -->
					</div>
				</c:if>

				<c:if test="${topic == 'stay'}">
					<div id="tabs-4">
						<!-- Page Header -->
						<div class="row">
							<div class="col-lg-12">
								<h1 class="page-header">
									숙박 보기 <small> <c:forEach items="${chkAllArea}"
											var="list" end="0">
										${list.s_state}
										전체
									</c:forEach> <c:forEach items="${chkArea}" var="list" end="0">
										${list.s_state}
										${list.s_city}
									</c:forEach>
									</small>
								</h1>
							</div>
						</div>
						<!-- /.row -->

						<!-- Projects Row -->
						<div class="row">
							<c:forEach items="${chkAllArea}" var="list" begin="0" end="3">
								<div class="col-md-3 portfolio-item">
									<a href="detail.do?s_num=${list.s_num}"> <img class="img-responsive"
										src="${list.s_thumbnail}" alt="">
									</a>
									<h3>
										<a href="detail.do?s_num=${list.s_num}">${list.s_title}</a>
									</h3>
									<p>${list.s_tel}</p>
									<p>${list.s_loc}</p>
								</div>
							</c:forEach>
							<c:forEach items="${chkArea}" var="list" begin="0" end="3">
								<div class="col-md-3 portfolio-item">
									<a href="detail.do?s_num=${list.s_num}"> <img class="img-responsive"
										src="${list.s_thumbnail}" alt="">
									</a>
									<h3>
										<a href="detail.do?s_num=${list.s_num}">${list.s_title}</a>
									</h3>
									<p>${list.s_tel}</p>
									<p>${list.s_loc}</p>
								</div>
							</c:forEach>
						</div>
						<!-- /.row -->

						<!-- Projects Row -->
						<div class="row">
							<c:forEach items="${chkAllArea}" var="list" begin="4" end="7">
								<div class="col-md-3 portfolio-item">
									<a href="detail.do?s_num=${list.s_num}"> <img class="img-responsive"
										src="${list.s_thumbnail}" alt="">
									</a>
									<h3>
										<a href="detail.do?s_num=${list.s_num}">${list.s_title}</a>
									</h3>
									<p>${list.s_tel}</p>
									<p>${list.s_loc}</p>
								</div>
							</c:forEach>
							<c:forEach items="${chkArea}" var="list" begin="4" end="7">
								<div class="col-md-3 portfolio-item">
									<a href="detail.do?s_num=${list.s_num}"> <img class="img-responsive"
										src="${list.s_thumbnail}" alt="">
									</a>
									<h3>
										<a href="detail.do?s_num=${list.s_num}">${list.s_title}</a>
									</h3>
									<p>${list.s_tel}</p>
									<p>${list.s_loc}</p>
								</div>
							</c:forEach>
						</div>

						<!-- Projects Row -->
						<div class="row">
							<c:forEach items="${chkAllArea}" var="list" begin="8" end="11">
								<div class="col-md-3 portfolio-item">
									<a href="detail.do?s_num=${list.s_num}"> <img class="img-responsive"
										src="${list.s_thumbnail}" alt="">
									</a>
									<h3>
										<a href="detail.do?s_num=${list.s_num}">${list.s_title}</a>
									</h3>
									<p>${list.s_tel}</p>
									<p>${list.s_loc}</p>
								</div>
							</c:forEach>
							<c:forEach items="${chkArea}" var="list" begin="8" end="11">
								<div class="col-md-3 portfolio-item">
									<a href="detail.do?s_num=${list.s_num}"> <img class="img-responsive"
										src="${list.s_thumbnail}" alt="">
									</a>
									<h3>
										<a href="detail.do?s_num=${list.s_num}">${list.s_title}</a>
									</h3>
									<p>${list.s_tel}</p>
									<p>${list.s_loc}</p>
								</div>
							</c:forEach>
						</div>
						<!-- /.row -->

						<hr>

						<!-- Pagination -->
						<div class="row text-center">
							<div class="col-lg-12">
								<ul class="pagination">
									<c:if test="${pv.startPage > 1}">
										<li><a
											href="searchResult.do?currentPage=${pv.startPage - pv.blockPage}&topic=stay&state=${state}&city=${city}&topicList=${topicStr}">&laquo;</a>
										</li>
									</c:if>

									<c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
										<c:url var="currPage" value="searchResult.do">
											<c:param name="currentPage" value="${i}" />
											<c:param name="topic" value="stay" />
											<c:forEach items="${chkAllArea}" var="list" end="0">
												<c:choose>
													<c:when test="${list.s_state != null}">
														<c:param name="state" value="${list.s_state}" />
														<c:param name="city" value="전체" />
														<c:param name="topicList" value="${topicStr}" />
													</c:when>
												</c:choose>
											</c:forEach>
											<c:forEach items="${chkArea}" var="list" end="0">
												<c:choose>
													<c:when test="${list.s_city != null}">
														<c:param name="state" value="${list.s_state}" />
														<c:param name="city" value="${list.s_city}" />
														<c:param name="topicList" value="${topicStr}" />
													</c:when>
												</c:choose>
											</c:forEach>
										</c:url>
										<li><a href="${currPage}">${i}</a></li>
									</c:forEach>

									<c:if test="${pv.totalPage > pv.endPage}">
										<li><a
											href="searchResult.do?currentPage=${pv.startPage + pv.blockPage}&topic=stay&state=${state}&city=${city}&topicList=${topicStr}">&raquo;</a></li>
									</c:if>
								</ul>
							</div>
						</div>
						<!-- /.row -->
					</div>
				</c:if>
				<c:if test="${topic == 'festival'}">
					<div id="tabs-5">

						<!-- Page Header -->
						<div class="row">
							<div class="col-lg-12">
								<h1 class="page-header">
									축제 보기 <small> <c:forEach items="${chkAllArea}"
											var="list" end="0">
										${list.f_state}
										전체
									</c:forEach> <c:forEach items="${chkArea}" var="list" end="0">
										${list.f_state}
										${list.f_city}
									</c:forEach>
									</small>
								</h1>
							</div>
						</div>
						<!-- /.row -->

						<!-- Projects Row -->
						<div class="row">
							<c:forEach items="${chkAllArea}" var="list" begin="0" end="3">
								<div class="col-md-3 portfolio-item">
									<a href="festival_detail.do?f_num=${list.f_num}"> <img class="img-responsive"
										src="${list.f_thumbnail}" alt="">
									</a>
									<h3>
										<a href="festival_detail.do?f_num=${list.f_num}">${list.f_title}</a>
									</h3>
									<p>${list.f_state}</p>
									<p>${list.f_tel}</p>
									<p>${list.f_loc}</p>
								</div>
							</c:forEach>
							<c:forEach items="${chkArea}" var="list" begin="0" end="3">
								<div class="col-md-3 portfolio-item">
									<a href="festival_detail.do?f_num=${list.f_num}"> <img class="img-responsive"
										src="${list.f_thumbnail}" alt="">
									</a>
									<h3>
										<a href="festival_detail.do?f_num=${list.f_num}">${list.f_title}</a>
									</h3>
									<p>${list.f_state}</p>
									<p>${list.f_tel}</p>
									<p>${list.f_loc}</p>
								</div>
							</c:forEach>
						</div>
						<!-- /.row -->

						<!-- Projects Row -->
						<div class="row">
							<c:forEach items="${chkAllArea}" var="list" begin="4" end="7">
								<div class="col-md-3 portfolio-item">
									<a href="festival_detail.do?f_num=${list.f_num}"> <img class="img-responsive"
										src="${list.f_thumbnail}" alt="">
									</a>
									<h3>
										<a href="festival_detail.do?f_num=${list.f_num}">${list.f_title}</a>
									</h3>
									<p>${list.f_state}</p>
									<p>${list.f_tel}</p>
									<p>${list.f_loc}</p>
								</div>
							</c:forEach>
							<c:forEach items="${chkArea}" var="list" begin="4" end="7">
								<div class="col-md-3 portfolio-item">
									<a href="festival_detail.do?f_num=${list.f_num}"> <img class="img-responsive"
										src="${list.f_thumbnail}" alt="">
									</a>
									<h3>
										<a href="festival_detail.do?f_num=${list.f_num}">${list.f_title}</a>
									</h3>
									<p>${list.f_state}</p>
									<p>${list.f_tel}</p>
									<p>${list.f_loc}</p>
								</div>
							</c:forEach>
						</div>

						<!-- Projects Row -->
						<div class="row">
							<c:forEach items="${chkAllArea}" var="list" begin="8" end="11">
								<div class="col-md-3 portfolio-item">
									<a href="festival_detail.do?f_num=${list.f_num}"> <img class="img-responsive"
										src="${list.f_thumbnail}" alt="">
									</a>
									<h3>
										<a href="festival_detail.do?f_num=${list.f_num}">${list.f_title}</a>
									</h3>
									<p>${list.f_state}</p>
									<p>${list.f_tel}</p>
									<p>${list.f_loc}</p>
								</div>
							</c:forEach>
							<c:forEach items="${chkArea}" var="list" begin="8" end="11">
								<div class="col-md-3 portfolio-item">
									<a href="festival_detail.do?f_num=${list.f_num}"> <img class="img-responsive"
										src="${list.f_thumbnail}" alt="">
									</a>
									<h3>
										<a href="festival_detail.do?f_num=${list.f_num}">${list.f_title}</a>
									</h3>
									<p>${list.f_state}</p>
									<p>${list.f_tel}</p>
									<p>${list.f_loc}</p>
								</div>
							</c:forEach>
						</div>
						<!-- /.row -->

						<hr>

						<!-- Pagination -->
						<div class="row text-center">
							<div class="col-lg-12">
								<ul class="pagination">
									<c:if test="${pv.startPage > 1}">
										<li><a
											href="searchResult.do?currentPage=${pv.startPage - pv.blockPage}&topic=festival&state=${state}&city=${city}&topicList=${topicStr}">&laquo;</a>
										</li>
									</c:if>

									<c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
										<c:url var="currPage" value="searchResult.do">
											<c:param name="currentPage" value="${i}" />
											<c:param name="topic" value="festival" />
											<c:forEach items="${chkAllArea}" var="list" end="0">
												<c:choose>
													<c:when test="${list.f_state != null}">
														<c:param name="state" value="${list.f_state}" />
														<c:param name="city" value="전체" />
														<c:param name="topicList" value="${topicStr}" />
													</c:when>
												</c:choose>
											</c:forEach>
											<c:forEach items="${chkArea}" var="list" end="0">
												<c:choose>
													<c:when test="${list.f_city != null}">
														<c:param name="state" value="${list.f_state}" />
														<c:param name="city" value="${list.f_city}" />
														<c:param name="topicList" value="${topicStr}" />
													</c:when>
												</c:choose>
											</c:forEach>
										</c:url>
										<li><a href="${currPage}">${i}</a></li>
									</c:forEach>

									<c:if test="${pv.totalPage > pv.endPage}">
										<li><a
											href="searchResult.do?currentPage=${pv.startPage + pv.blockPage}&topic=festival&state=${state}&city=${city}&topicList=${topicStr}">&raquo;</a></li>
									</c:if>
								</ul>
							</div>
						</div>
						<!-- /.row -->
					</div>
				</c:if>
				<%-- </c:forEach> --%>
			</div>

			<hr>

			<!-- Footer -->
			<footer>
				<div class="row">
					<div class="col-lg-12">
						<p>Copyright &copy; Your Website 2017</p>
					</div>
				</div>
				<!-- /.row -->
			</footer>
		</div>
		<!-- /.container -->
	</section>
	<%@include file="../common/footer.jsp"%>

	<div
		class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
		<a class="btn btn-primary" href="#page-top"> <i
			class="fa fa-chevron-up"></i>
		</a>
	</div>

	<!-- JQuery -->
	<script src="main/vendor/jquery/jquery.min.js"></script>
	<script src="main/js/jquery.js"></script>
	<script src="allSearch/js/common2.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="main/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Theme JavaScript -->
	<script src="main/js/freelancer.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="main/js/bootstrap.min.js"></script>
</body>
</html>