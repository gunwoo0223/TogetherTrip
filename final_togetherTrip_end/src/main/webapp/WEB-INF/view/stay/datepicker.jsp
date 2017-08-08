<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Datepicker - Default functionality</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$(".datepicker").datepicker();
	});
</script>
</head>
<body>

	<form action="datepicker.do" method="post">
		<p>
			CHECKIN: <input type="text" class="datepicker" id="checkin"
				name="checkin"> CHECKOUT: <input type="text"
				class="datepicker" id="checkout" name="checkout">
		</p>
		<input type="submit" value="날짜"/>
	</form>
	
	
</body>
</html>