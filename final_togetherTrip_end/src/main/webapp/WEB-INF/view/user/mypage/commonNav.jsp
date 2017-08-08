<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8" />
<title>mypage</title>
<style type="text/css">

</style>
<!-- Bootstrap core CSS -->
<link href="user/mypage/css/bootstrap.min.css" rel="stylesheet" />

<!-- Material Dashboard CSS -->
<link href="user/mypage/css/material-dashboard.css" rel="stylesheet" />

<!-- CSS for Demo Purpose, don't include it in your project -->
<link href="user/mypage/css/demo.css" rel="stylesheet" />

<!-- Fonts and icons -->
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>

<body>
	<div class="sidebar" data-color="purple" data-image="user/mypage/img/sidebar-1.jpg">
		<div class="logo">
			<a href="main.do" class="simple-text"><img src="main/img/logo.png" style="width: 200px; height: 80px;"></a>
		</div>

		<div class="sidebar-wrapper">
			<ul class="nav">
				<li>
					<a href="userInfo.do">
						<i class="material-icons">person</i>
						<p>사용자 정보</p>
					</a>
				</li>
				<li>
					<a href="interestedInfo.do"> 
						<i class="material-icons">bubble_chart</i>
						<p>관심 정보</p>
					</a>
				</li>
				<li>
					<a href="reservationInfo.do"> 
						<i class="material-icons">content_paste</i>
						<p>예약정보</p>
					</a>
				</li>
				<li>
					<a href="reviewInfo.do"> 
						<i class="material-icons">library_books</i>
						<p>작성한 글</p>
					</a>
				</li>
				<li>
					<a href="withdraw.do"> 
						<i class="material-icons">dashboard</i>
						<p>회원탈퇴</p>
					</a>
				</li>
			</ul>
		</div>
	</div>
</body>

<!--   Core JS Files   -->
<script src="user/mypage/js/jquery-3.1.0.min.js" type="text/javascript"></script>
<script src="user/mypage/js/bootstrap.min.js" type="text/javascript"></script>
<script src="user/mypage/js/material.min.js" type="text/javascript"></script>

<!-- Material Dashboard javascript methods -->
<script src="user/mypage/js/material-dashboard.js"></script>

<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="user/mypage/js/demo.js"></script>

</html>








