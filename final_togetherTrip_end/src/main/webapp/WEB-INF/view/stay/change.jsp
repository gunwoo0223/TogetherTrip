<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#btn').click(function(){
		$.ajax({
			type:'GET',
			dataType:'json',
			url:'change.do?addr='+$('#addr').val(),
			success:viewMessage,
			error:function(xhr,textStatus,error){
				alert(xhr.status);
			}
		});
	});
});

function viewMessage(data){
	$('#wrap').empty();
	$('#wrap').append('<p>address</p>');
 	$.each(data.channel.item,function(index,value){
 		var lat=value.lat;
 		var lng=value.lng;
		$('#wrap').append('<p>'+lat+'</p>');
		$('#wrap').append('<p>'+lng+'</p>');
		$('#wrap').append('<a href="http://map.daum.net/link/to/카카오판교오피스,'+lat+','+lng+'">길찾기</a>');
	});
}
</script>
</head>
<body>
<input type="text" id="addr" name="addr"/>
<input type="button" id="btn" value="검색"/>
<div id="wrap">

</div>
위도 경도

</body>
</html>