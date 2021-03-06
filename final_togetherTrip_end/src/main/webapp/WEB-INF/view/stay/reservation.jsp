<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Small Business - Start Bootstrap Template</title>

<!-- Bootstrap Core CSS -->
<link href="stay/reservation/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="stay/reservation/css/small-business.css" rel="stylesheet">
<script src="stay/date/js/ajax.js"></script>
<!-- jQuery -->
<script src="stay/reservation/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="stay/reservation/js/bootstrap.min.js"></script>
	
<script>
	$(function() {
		$(".datepicker").datepicker();
	});
</script>

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> <img
					src="http://placehold.it/150x50&text=Logo" alt="">
				</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#">About</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Page Content -->
	<div class="container">

		<!-- Heading Row -->
		<div class="row">
			<div class="col-md-8">
				<c:forEach items="${hotelInfo.imgList}" var="img">
					<img class="img-responsive img-rounded" src="${img.s_img1}" alt="">
				</c:forEach>
			</div>
			<!-- /.col-md-8 -->


			<div class="col-md-4">
				<h1>${hotelInfo.s_title}</h1>
				<p>This is a template that is great for small businesses. It
					doesn't have too much fancy flare to it, but it makes a great use
					of the standard Bootstrap core components. Feel free to use this
					template for any project you want!</p>
				<a class="btn btn-primary btn-lg" href="pay.do">결제하기</a>
			</div>
			<!-- /.col-md-4 -->
		</div>
		<!-- /.row -->

		<hr>

		<!-- Call to Action Well -->
		<div class="row">
			<div class="col-lg-12">
				<div class="well text-center">This is a well that is a great
					spot for a business tagline or phone number for easy access!</div>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->

		<!-- Content Row -->
		<div class="row">
			<div class="col-md-4">
				<h2>${hotelInfo.s_loc}</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Saepe rem nisi accusamus error velit animi non ipsa placeat.
					Recusandae, suscipit, soluta quibusdam accusamus a veniam quaerat
					eveniet eligendi dolor consectetur.</p>
				<a class="btn btn-default" href="#">More Info</a>
			</div>
			<!-- /.col-md-4 -->
			<div class="col-md-4">
				<h2>Heading 2</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Saepe rem nisi accusamus error velit animi non ipsa placeat.
					Recusandae, suscipit, soluta quibusdam accusamus a veniam quaerat
					eveniet eligendi dolor consectetur.</p>
				<a class="btn btn-default" href="#">More Info</a>
			</div>
			<!-- /.col-md-4 -->
			<div class="col-md-4">
				<h2>Heading 3</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Saepe rem nisi accusamus error velit animi non ipsa placeat.
					Recusandae, suscipit, soluta quibusdam accusamus a veniam quaerat
					eveniet eligendi dolor consectetur.</p>
				<a class="btn btn-default" href="#">More Info</a>
			</div>
			<!-- /.col-md-4 -->
		</div>
		<!-- /.row -->

		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Your Website 2014</p>
				</div>
			</div>
		</footer>

	</div>
	<!-- /.container -->


</body>

</html>
