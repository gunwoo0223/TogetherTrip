<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>TT</title>

    <!-- Bootstrap Core CSS -->
    <link href="main/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="main/css/freelancer.min.css" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="main/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="main/css/half-slider.css" rel="stylesheet">
    
    <!-- Custom Fonts -->
    <link href="main/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
</head>

<body id="page-top" class="index" style="padding-right:0;">

	<%@ include file="../common/header.jsp"%>

	<!-- Header -->
	<!-- Half Page Image Background Carousel Header -->
    <header id="myCarousel" class="carousel slide" style="position:relative; top:24%;">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for Slides -->
        <div class="carousel-inner">
            <div class="item active">
                <!-- Set the first background image using inline CSS below. -->
                <div class="fill" style="background-image:url('http://korean.visitkorea.or.kr/upload/vk/kor/bz15/showcase_0_20170719104937.jpg');"></div>
                <div class="carousel-caption">
                    <h2>남해의 비경을 품은 해안길</h2>
                </div>
            </div>
            <div class="item">
                <!-- Set the second background image using inline CSS below. -->
                <div class="fill" style="background-image:url('http://korean.visitkorea.or.kr/upload/vk/kor/bz15/showcase_0_20170703173458.jpg');"></div>
                <div class="carousel-caption">
                    <h2>2017 여름 캠페인 여름이야~~</h2>
                </div>
            </div>
            <div class="item">
                <!-- Set the third background image using inline CSS below. -->
                <div class="fill" style="background-image:url('http://korean.visitkorea.or.kr/upload/vk/kor/bz15/showcase_0_20170711103806.jpg');"></div>
                <div class="carousel-caption">
                    <h2>가뿐한 마음으로 머무는 강과 소나무 펜션</h2>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>

    </header>
    
    <!-- Portfolio Grid Section -->
    <section id="portfolio" style="position:relative; top:15%; padding-bottom: 0px;">
        <div class="container">
			<h4><b>최신 명소정보</b></h4>        
            <div class="row">
            	<c:forEach items="${pList}" var="pdto">
            		<div class="col-sm-4 portfolio-item">
                    <a href="place.do?p_num=${pdto.p_num}" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src='images/place/${pdto.p_thumbnail}' class="img-responsive" style="width: 700px; height: 205px;">
                    </a>
                </div>
            	</c:forEach>
            </div>
        </div>
    </section>
    
    <!-- Portfolio Grid Section -->
    <section id="portfolio" style="position:relative; top:15%; padding-top: 0px; padding-bottom: 0px;">
        <div class="container">
			<h4><b>최신 맛집정보</b></h4>        
            <div class="row">
            	<c:forEach items="${rList}" var="rdto">
            		<div class="col-sm-4 portfolio-item">
                    <a href="res.do?r_num=${rdto.r_num}" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src='images/restaurant/${rdto.r_thumbnail}' class="img-responsive" style="width: 700px; height: 205px;">
                    </a>
                </div>
            	</c:forEach>
            </div>
        </div>
    </section>
    
    <!-- Portfolio Grid Section -->
    <section id="portfolio" style="position:relative; top:15%; padding-top: 0px; padding-bottom: 0px;">
        <div class="container">
			<h4><b>최신 축제정보</b></h4>        
            <div class="row">
            	<c:forEach items="${fList}" var="fdto">
            		<div class="col-sm-4 portfolio-item">
                    <a href="festival_detail.do?f_num=${fdto.f_num}" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src='images/festival/${fdto.f_thumbnail}' class="img-responsive" style="width: 700px; height: 205px;">
                    </a>
                </div>
            	</c:forEach>
            </div>
        </div>
    </section>
    
    <!-- Portfolio Grid Section -->
    <section id="portfolio" style="position:relative; top:15%; padding-top: 0px; padding-bottom: 0px;">
        <div class="container">
			<h4><b>최신 숙박정보</b></h4>        
            <div class="row">
            	<c:forEach items="${sList}" var="sdto">
            		<div class="col-sm-4 portfolio-item">
                    <a href="stay.do?s_num=${sdto.s_num}" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src='images/stay/${sdto.s_thumbnail}' class="img-responsive" style="width: 700px; height: 205px;">
                    </a>
                </div>
            	</c:forEach>
            </div>
        </div>
    </section>

	<%@ include file="../common/footer.jsp"%>
 
    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- jQuery -->
    <script src="main/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="main/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Theme JavaScript -->
    <script src="main/js/freelancer.min.js"></script>

    <!-- jQuery -->
    <script src="main/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="main/js/bootstrap.min.js"></script>
    
    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
</body>

</html>





