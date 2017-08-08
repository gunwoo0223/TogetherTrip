<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('li').removeClass('active');
		$('li:eq(4)').addClass('active');
	});
	</script>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="user/mypage/img/apple-icon.png" />
	<link rel="icon" type="image/png" href="user/mypage/img/favicon.png" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>WITHDRAW</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="user/mypage/css/bootstrap.min.css" rel="stylesheet" />

    <!--  Material Dashboard CSS    -->
    <link href="user/mypage/css/material-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="user/mypage/css/demo.css" rel="stylesheet" />

	<!-- withdrawChk CSS -->
	<link rel="stylesheet" href="user/mypage/css/withdraw.css"/>

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
						<a class="navbar-brand" href="#">회원탈퇴</a>
					</div>
				</div>
			</nav>

	        <div class="content">
	            <div class="container-fluid">
	                <div class="card">
	                    <div class="card-header" data-background-color="purple">
	                        <h4 class="title">Withdraw..</h4>
	                        <p class="category">Please think one more time..</p>
	                    </div>
	                    <div class="card-content">
	                        <div class="row">
	                            <div class="col-md-12">
	                                <div class="alert alert-danger">
	                                    <span>
										탈퇴 안내<br/>
										회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.<br/>
										사용하고 계신 아이디(${sessionUId})는 탈퇴할 경우 재사용 및 복구가 불가능합니다.<br/>
										탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가하오니 신중하게 선택하시기 바랍니다.<br/>
										탈퇴 후에도 게시판형 서비스에 등록한 게시물은 그대로 남아 있습니다.<br/>
										게시글 및 댓글은 탈퇴 시 자동 삭제되지 않고 그대로 남아 있습니다.<br/>
										삭제를 원하는 게시글이 있다면 반드시 탈퇴 전 삭제하시기 바랍니다.<br/> 
										탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, 게시글을 임의로 삭제해드릴 수 없습니다.<br/> 
										탈퇴 후에는 아이디 (${sessionUId}) 로 다시 가입할 수 없으며 아이디와 데이터는 복구할 수 없습니다.<br/>
										게시판형 서비스에 남아 있는 게시글은 탈퇴 후 삭제할 수 없습니다.<br/>
										또한, 네이버 아이디를 사용해 다른 서비스에 로그인 할 수 없게 됩니다.<br/> 
										</span>
	                                </div>
	                            <div class="checks etrans">
									<input type="checkbox" id="withdrawChk"> 
									<label for="withdrawChk">안내 사항을 모두 확인하였으며, 이에 동의합니다.</label> 
								</div>
	                            </div>
	                            <div class="col-md-2">
									<div class="form-group">
										비밀번호<input type="password" name="uPw" id="uPw" class="form-control">
									</div>
                                </div>
                                <!-- 아이디와 비밀번호가 일치해야 회원탈퇴가 되어야 하기 때문에, 아이디값을 가지는 세션uId를 넘겨 확인을 거친다. -->
                                <input type="hidden" name="uId" id="uId" value="${sessionScope.uId}"/>
                                 <div class="col-md-2">
                                 	<div class="form-group">
										<button type="submit" class="btn btn-default" id="withdrawBtn">탈퇴</button>
                                	</div>
                                </div>
	                            <!-- <div class="col-md-6">
	                                <h5>Notification states</h5>
	                                <div class="alert alert-success">
	                                    <span><b> Success - </b> This is a regular notification made with ".alert-success"</span>
	                                </div>
	                                <div class="alert alert-warning">
	                                    <span><b> Warning - </b> This is a regular notification made with ".alert-warning"</span>
	                                </div>
	                                <div class="alert alert-danger">
	                                    <span><b> Danger - </b> This is a regular notification made with ".alert-danger"</span>
	                                </div>
	                            </div> -->
	                        </div>

	                        <br>
	                        <br>
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
	
	<!-- withdrawProcess JS -->
	<script src="user/mypage/js/withdraw.js"></script>

</html>
