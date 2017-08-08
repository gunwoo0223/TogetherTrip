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
	                                <h4 class="title">User Profile</h4>
									<p class="category">Complete your profile</p>
	                            </div>
	                            <div class="card-content">
	                                    <div class="row">
	                                        <div class="col-md-2">
												<div class="form-group">
													<label style="color: black">아이디</label>
												</div>
	                                        </div>
	                                        <div class="col-md-1">
												<div class="form-group">
													<label style="color: #5D5D5D; font-size: 16px;">${udto.uId}</label>
												</div>
	                                        </div>
	                                    </div>

	                                    <div class="row">
	                                        <div class="col-md-2">
												<div class="form-group">
													<label style="color: black">이름</label>
												</div>
	                                        </div>
	                                        <div class="col-md-6">
												<div class="form-group">
													<label style="color: #5D5D5D; font-size: 16px;">${udto.uName}</label>
												</div>
	                                        </div>
	                                    </div>

	                                    <div class="row">
	                                        <div class="col-md-2">
												<div class="form-group">
													<label style="color: black">성별</label>
												</div>
	                                        </div>
	                                        <div class="col-md-6">
												<div class="form-group">
													<label style="color: #5D5D5D; font-size: 16px;">${udto.uGender}</label>
												</div>
	                                        </div>
	                                    </div>

	                                    <div class="row">
	                                        <div class="col-md-2">
												<div class="form-group">
													<label style="color: black">생년월일</label>
												</div>
	                                        </div>
	                                        <div class="col-md-6">
												<div class="form-group">
													<label style="color: #5D5D5D; font-size: 16px;">${udto.uBirth}</label>
												</div>
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="row">
	                                        <div class="col-md-2">
												<div class="form-group">
													<label style="color: black">주소</label>
												</div>
	                                        </div>
	                                        <div class="col-md-6">
												<div class="form-group">
													<label style="color: #5D5D5D; font-size: 16px;">${udto.uAddress}</label>
												</div>
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="row">
	                                        <div class="col-md-2">
												<div class="form-group">
													<label style="color: black">핸드폰</label>
												</div>
	                                        </div>
	                                        <div class="col-md-6">
												<div class="form-group">
													<label style="color: #5D5D5D; font-size: 16px;">${udto.uPhone}</label>
												</div>
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="row">
	                                        <div class="col-md-2">
												<div class="form-group">
													<label style="color: black">이메일</label>
												</div>
	                                        </div>
	                                        <div class="col-md-6">
												<div class="form-group">
													<label style="color: #5D5D5D; font-size: 16px;">${udto.uEmail}</label>
												</div>
	                                        </div>
	                                    </div>
	                                    
	                                    <a href="userInfoUpdate.do"><button type="button" class="btn btn-primary pull-right">프로필 수정</button></a>
	                                    <div class="clearfix"></div>
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
