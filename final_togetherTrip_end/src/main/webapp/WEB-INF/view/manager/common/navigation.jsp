<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<title>Insert title here</title>
</head>
<body>
<aside>
	<div id="sidebar" class="nav-collapse ">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu" id="nav-accordion">
	
			<p class="centered">
				<a href="manager.do">
				<img src="manager/img/ui-sam.jpg" class="img-circle" width="60"></a>
			</p>
			<h5 class="centered">Manager</h5>
	
			<li>
				<a href="manager.do">
					<i class="fa fa-dashboard"></i>
					<span>Dashboard</span>
				</a>
			</li>
			
			<li class="sub-menu">
				<a href="javascript:;"> 
					<i class="fa fa-tasks"></i> 
					<span>게시글 업로드</span>
				</a>
				<ul class="sub">
					<li><a href="placeForm.do">명소</a></li>
					<li><a href="restaurantForm.do">맛집</a></li>
					<li><a href="stayForm.do">숙박</a></li>
					<li><a href="festivalForm.do">축제</a></li>
				</ul>
			</li>
				
			<li class="sub-menu">
				<a href="javascript:;">
					<i class="fa fa-th"></i> 
					<span>게시글 목록</span>
				</a>
				<ul class="sub">
					<li><a href="placeBoard.do">명소</a></li>
					<li><a href="restaurantBoard.do">맛집</a></li>
					<li><a href="stayBoard.do">숙박</a></li>							
					<li><a href="festivalBoard.do">축제</a></li>
				</ul>
			</li>
			<li class="sub-menu">
				<a href="javascript:;"> 
					<i class=" fa fa-bar-chart-o"></i> 
					<span>회원관리</span>
				</a>
				<ul class="sub">
					<li><a href="memberInfo.do">회원정보</a></li>
				</ul>
			</li>
		</ul>
		<!-- sidebar menu end-->
	</div>
</aside>
</body>
</html>