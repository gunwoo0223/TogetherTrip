<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Login Form Template</title>

<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet"
	href="user/login/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="user/login/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="user/login/css/form-elements.css">
<link rel="stylesheet" href="user/login/css/style.css">
<!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"> -->

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="user/login/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="user/login/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="user/login/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="user/login/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="user/login/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>

	<!-- Top content -->
<div class="top-content">

<div class="inner-bg">
	<div class="container">
		<div class="row">
			<div class="col-sm-8 col-sm-offset-2 text">
				<h1>
					<strong>Together Trip</strong> Login
				</h1>
				<div class="description">
					<p>
						저희 사이트에 방문해 주셔서 감사합니다. <br /> 더 많은 정보를 얻으시려면 로그인을 해주세요!
					</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3 form-box">

	<!-- tab메뉴 -->
	<ul id="myTab" class="nav nav-tabs" role="tablist">
		<li role="presentation" class="active"><a
			data-target="#user" id="user-tab" role="tab" data-toggle="tab"
			aria-controls="user" aria-expanded="true">Users</a></li>
		<li role="presentation" class=""><a data-target="#admin"
			role="tab" id="admin-tab" data-toggle="tab"
			aria-controls="admin" aria-expanded="false">Admin</a></li>
	</ul>


	<div id="myTabContent" class="tab-content">
		<!-- user -->
		<div role="tabpanel" class="tab-pane active in" id="user"
			aria-labelledby="user-tab">
			<div class="form-bottom">
				<form role="form" action="userLoginProcess.do" method="post"
					class="login-form">
					<div class="form-group">
						<label class="sr-only" for="uId">User Name</label> <input
							type="text" name="uId" placeholder="User Id"
							class="form-username form-control" id="uId">
					</div>
					<div class="form-group">
						<label class="sr-only" for="uPw">Password</label> <input
							type="password" name="uPw" placeholder="User Pw"
							class="form-password form-control" id="uPw">
					</div>
					<button type="submit" class="btn">Sign in!</button>
					<button type="button" class="naverBtn"><img class="img-responsive fa-naver-logo" alt="naver" src="user/login/img/naver_logo.png">Naver로 로그인</button>
					<button type="button" class="facebookBtn"><img class="img-responsive fa-facebook-logo" alt="facebook" src="user/login/img/facebook_logo.jpg">Facebook으로 로그인</button>
					<button type="button" class="googleBtn"><img class="img-responsive fa-google-logo" alt="google" src="user/login/img/google_logo.png">Google로 로그인</button>
					<button type="button" class="kakaoBtn"><img class="img-responsive fa fa-kakao-logo" alt="kakao" src="user/login/img/kakao_logo.png">kakao로 로그인</button>
				</form>
			</div>
		</div>

	<!-- admin -->
	<div role="tabpanel" class="tab-pane" id="admin"
		aria-labelledby="admin-tab">
		<div class="form-bottom">
			<form role="form" action="adminLoginProcess.do" method="post"
				class="login-form">
				<div class="form-group">
					<label class="sr-only" for="mId">Manager Name</label> <input
						type="text" name="mId" placeholder="Admin Id"
						class="form-username form-control" id="mId">
				</div>
				<div class="form-group">
					<label class="sr-only" for="mPw">Password</label> <input
						type="password" name="mPw" placeholder="Admin Pw"
						class="form-password form-control" id="mPw">
				</div>
				<button type="submit" class="btn">Sign in!</button>
			</form>
		</div>
	</div>
  </div>
 </div>
</div>
<!-- 
	<div class="row">
		<div class="col-sm-6 col-sm-offset-3 social-login">
			<h3>...or login with:</h3>
			<div class="social-login-buttons">
				<a class="btn btn-link-1 btn-link-1-facebook" href="https://www.facebook.com/"> 
				<i class="fa fa-facebook"></i> Facebook
				</a> 
				<a class="btn btn-link-1 btn-link-1-twitter" href="https://twitter.com/login?lang=ko"> 
				<i class="fa fa-twitter"></i> Twitter
				</a> 
				<a class="btn btn-link-1 btn-link-1-google-plus" href="https://accounts.google.com/"> 
				<i class="fa fa-google-plus"></i> Google Plus
				</a>
			</div>
		</div>
	</div>
-->
  </div>
</div>

</div>


<!-- Javascript -->
	<script src="user/login/js/jquery-1.11.1.min.js"></script>
	<script src="user/login/bootstrap/js/bootstrap.min.js"></script>
	<script src="user/login/js/jquery.backstretch.min.js"></script>
	<script src="user/login/js/scripts.js"></script>

</body>
</html>