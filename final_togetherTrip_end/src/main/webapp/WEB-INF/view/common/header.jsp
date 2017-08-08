<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1, #bs-example-navbar-collapse-2">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <!-- <a class="navbar-brand" href="main.do">Start Bootstrap</a> -->
                <a class="navbar-brand" href="main.do"><img src="main/img/logo.png"/></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                <ul class="nav navbar-nav navbar-right">
					<c:choose>
						<c:when test="${sessionScope.uId != null}">
							<li>
		                        <a href="#">${sessionScope.uName}님 반갑습니다!</a>
		                    </li>
							<li>
		                        <a href="userInfo.do">mypage</a>
		                    </li>
		                    <li>
		                        <a href="logout.do">logout</a>
		                    </li>					
						</c:when>
						<c:when test="${sessionScope.mId != null}">
							<li>
		                        <a href="#">${sessionScope.mName}님 반갑습니다!</a>
		                    </li>
							<li>
		                        <a href="manager.do">admin page</a>
		                    </li>
		                    <li>
		                        <a href="logout.do">logout</a>
		                    </li>
						</c:when>
						<c:otherwise>
							<li>
		                        <a href="loginForm.do">Login</a>
		                    </li>
		                    <li>
		                        <a href="joinForm.do">Join</a>
		                    </li>
						</c:otherwise>
					</c:choose>
                </ul>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="introduce.do">소개</a>
                    </li>
                    <li class="page-scroll">
                        <a href="pmain.do">명소</a>
                    </li>
                    <li class="page-scroll">
                        <a href="rmain.do">맛집</a>
                    </li>
                    <li class="page-scroll">
                        <a href="festival.do">축제</a>
                    </li>
                    <li class="page-scroll">
                        <a href="stay.do">숙소</a>
                    </li>
                    <li class="page-scroll">
                        <a href="allSearch.do">한 눈에 보기</a>
                    </li>
                    <li class="page-scroll">
                        <a href="reviewBoard.do">여행후기</a>
                    </li>
                </ul>
            </div>
          
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    

