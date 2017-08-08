<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	
	<!-- daum address api -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="user/mypage/js/address.js"></script>
	
	<!-- 유효성 검사 -->
	<script src="user/mypage/js/userInfoUpdate.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function(){
		$('li').removeClass('active');
		$('li:eq(0)').addClass('active');
	});
	</script>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="user/mypage/img/apple-icon.png" />
	<link rel="icon" type="image/png" href="user/mypage/img/favicon.png" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>USER INFO</title>

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
						<a class="navbar-brand" href="#">사용자 정보</a>
					</div>
				</div>
			</nav>

	        <div class="content">
	            <div class="container-fluid">
	                <div class="row">
	                    <div class="col-md-12">
	                        <div class="card">
	                            <div class="card-header" data-background-color="purple">
	                                <h4 class="title">Edit Profile</h4>
									<p class="category">Complete your profile</p>
	                            </div>
	                            <div class="card-content">
	                                <form action="userInfoUpdateProcess.do" method="post">
	                                    <div class="row">
	                                        <div class="col-md-2">
												<div class="form-group">
													<label style="color: black">아이디</label>
												</div>
	                                        </div>
	                                        <div class="col-md-2">
												<div class="form-group">
													<input type="text" name="uId" id="uId" class="form-control" value="${udto.uId}" readonly="readonly">
												</div>
	                                        </div>
	                                    </div>

	                                    <div class="row">
	                                        <div class="col-md-2">
												<div class="form-group">
													<label style="color: black">이름</label>
												</div>
	                                        </div>
	                                        <div class="col-md-3">
												<div class="form-group">
													<input type="text" name="uName" id="uName" class="form-control" value="${udto.uName}" placeholder="이름">
												</div>
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="row">
	                                        <div class="col-md-2">
												<div class="form-group">
													<label style="color: black">비밀번호</label>
												</div>
	                                        </div>
	                                        <div class="col-md-3">
												<div class="form-group">
													<input type="password" name="uPw" id="uPw" class="form-control" placeholder="비밀번호">
												</div>
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="row">
	                                        <div class="col-md-2">
												<div class="form-group">
													<label style="color: black">비밀번호 확인</label>
												</div>
	                                        </div>
	                                        <div class="col-md-3">
												<div class="form-group">
													<input type="password" name="uPwChk" id="uPwChk" class="form-control" placeholder="비밀번호 확인">
												</div>
	                                        </div>
	                                    </div>

	                                   <div class="row">
	                                   		<div class="col-md-2">
									    		<div class="form-group">
								         	 		<label style="color: black">성별</label>
								       	    	</div>
								       		</div>
										<div class="col-sm-2">
								        	<div class="form-group">
								        		<c:if test="${udto.uGender == '남'}">
								        			<input type="radio" name="uGender" id="uGender" value="남" checked="checked">
													<label style="padding-right:30px;">남</label>
													<input type="radio" name="uGender" id="uGender" value="여">						        		
								        			<label>여</label>
								        		</c:if>
							 		  			
										  		<c:if test="${udto.uGender == '여'}">
										  			<input type="radio" name="uGender" id="uGender" value="남">
										  			<label style="padding-right:30px;">남</label>
										  			<input type="radio" name="uGender" id="uGender" value="여" checked="checked">
										  			<label>여</label>
										  		</c:if> 
										 	</div>
										 </div>
								       </div>
	                                    
	                                    <div class="row">
										<div class="col-md-2">
											<div class="form-group">
												<label style="color: black">생년월일</label>
											</div>
                                        </div>
                                        <div class="col-md-2">
                                        <div class="form-group">
                                        	<c:set var="uYear" value="${uYear}"/>
											<select class="form-control" name="uYear" id="uYear">
											    <c:forEach begin="1910" end="2017" var="year">
											    	<option value="${year}" ${year == uYear ? 'selected="selected"' : '' }>${year}</option>
												</c:forEach>
										 	</select>
										</div>
										</div>
                                        <div class="col-md-1">
											<div class="form-group">
												<label style="color: black">년</label>
											</div>
                                        </div>
                                        <div class="col-md-1">
                                        <div class="form-group">
                                        	<c:set var="uMonth" value="${uMonth}"/>
											<select class="form-control" name="uMonth" id="uMonth">
												<c:forEach begin="1" end="12" var="month">
													<option value="${month}" ${month == uMonth ? 'selected="selected"' : '' }>${month}</option>
												</c:forEach>
											</select>
										</div>
										</div>
                                        <div class="col-md-1">
											<div class="form-group">
												<label style="color: black">월</label>
											</div>
                                        </div>
                                        <div class="col-md-1">
                                        <div class="form-group">
                                        	<c:set var="uDay" value="${uDay}"/>
											<select class="form-control" name="uDay" id="uDay">
												<c:forEach begin="1" end="31" var="day">
													<option value="${day}" ${day == uDay ? 'selected="selected"' : '' }>${day}</option>
												</c:forEach>
											</select>
										</div>
										</div>
                                        <div class="col-md-1">
											<div class="form-group">
												<label style="color: black">일</label>
											</div>
                                        </div>
	                                </div>
	                                    
	                                    <div class="row">
	                                       <div class="col-md-2">
												<div class="form-group">
													<label style="color: black">주소</label>
												</div>
	                                        </div>
	                                        <div class="col-md-3">
												<div class="form-group">
													<input type="text" class="form-control" name="uAddressNumber" id="sample4_postcode" value="${uAddressNumber}" readonly="readonly" placeholder="우편번호">
												</div>
	                                        </div>
	                                        <div class="col-md-3">
												<div class="form-group">
													<input type="button" class="btn btn-warning" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
												</div>
												<span id="guide" style="color:#999"></span>
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="row">
	                                       <div class="col-md-2">
	                                        </div>
	                                        <div class="col-md-6">
												<div class="form-group">
													<input type="text" class="form-control" id="sample4_roadAddress" name="uAddressBasic" value="${uAddressBasic}" readonly="readonly" placeholder="기본주소">
												</div>
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="row">
	                                       <div class="col-md-2">
	                                        </div>
	                                        <div class="col-md-6">
												<div class="form-group">
													<input type="text" class="form-control" id="sample4_jibunAddress" name="uAddressDetail" value="${uAddressDetail}" placeholder="상세주소">
												</div>
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="row">
											<div class="col-md-2">
												<div class="form-group">
													<label style="color: black">핸드폰</label>
												</div>
	                                        </div>
	                                        <div class="col-md-4">
												<div class="form-group">
													<input type="text" name="uPhone" id="uPhone" class="form-control" value="${udto.uPhone}" placeholder="핸드폰" />
												</div>
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="row">
											<div class="col-md-2">
												<div class="form-group">
													<label style="color: black">이메일</label>
												</div>
	                                        </div>
	                                        <div class="col-md-4">
												<div class="form-group">
													<input type="email" name="uEmail" id="uEmail" class="form-control" value="${udto.uEmail}" placeholder="이메일">
												</div>
	                                        </div>
	                                    </div>

	                                    <button type="submit" class="btn btn-primary pull-right" id="updateUserInfo">수정완료</button>
	                                    <div class="clearfix"></div>
	                                </form>
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
