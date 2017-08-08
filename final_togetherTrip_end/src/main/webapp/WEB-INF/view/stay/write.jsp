<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE>
<html>
<head>
<style type="text/css">
.center {
	margin-top: 50px;
}

.modal-header {
	padding-bottom: 5px;
}

.modal-footer {
	padding: 0;
}

.modal-footer .btn-group button {
	height: 40px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
	border: none;
	border-right: 1px solid #ddd;
}

.modal-footer .btn-group:last-child>button {
	border-right: 0;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- datepicker 날짜선택 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(function() {
	$(".datepicker").datepicker();
});
</script>

<title>숙박 글쓰기</title>
</head>

<body>
	<div class="center">
		<button data-toggle="modal" data-target="#squarespaceModal"
			class="btn btn-primary center-block">Click Me</button>
	</div>
	
	<!-- line modal -->
	<div class="modal fade" id="squarespaceModal" tabindex="-1"
		role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h3 class="modal-title" id="lineModalLabel">예약</h3>
				</div>
				<div class="modal-body">

					<!-- content goes here -->
					<%-- <p>${list}</p> --%>
					<form>
						<div class="form-group">
							<label for="exampleInputEmail1">01. 날짜,인원 선택</label> 
							<hr/>
							<div>
								<ul>
									<li>
										<label>체크인</label><input type="text" class="datepicker" id="checkin" name="checkin" class="form-control">
										<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
										<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
									</li>
									<li>
										<label>체크아웃</label><input type="text" class="datepicker" id="checkout" name="checkout" class="form-control">
									</li>
									<li>
										<label>숙박일수</label><input type="email" class="form-control" id="exampleInputEmail1"/>
									</li>
								</ul>
							</div>
							<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">02. 객실&패키지 선택</label>
							<hr/>
							<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">03. 예약자 정보</label>
							<hr/>
							<table>
								<tbody>
									<tr>
										<th><label>예약자 성명</label></th>
										<td><div><input type="text"></div></td>
									</tr>
									<tr>
										<th><label>이메일</label></th>
										<td><div><input type="text"></div></td>
									</tr>
									<tr>
										<th><label>휴대폰</label></th>
										<td><div><input type="text"></div></td>
									</tr>
								</tbody>
							</table>							
						</div>
						<!-- <div class="form-group">
							<label for="exampleInputFile">File input</label> <input
								type="file" id="exampleInputFile">
							<p class="help-block">Example block-level help text here.</p>
						</div> -->
						<div class="checkbox">
							<label> <input type="checkbox"> Check me out
							</label>
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>

				</div>
				<div class="modal-footer">
					<div class="btn-group btn-group-justified" role="group"
						aria-label="group button">
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default"
								data-dismiss="modal" role="button">Close</button>
						</div>
						<div class="btn-group btn-delete hidden" role="group">
							<button type="button" id="delImage"
								class="btn btn-default btn-hover-red" data-dismiss="modal"
								role="button">Delete</button>
						</div>
						<div class="btn-group" role="group">
							<button type="button" id="saveImage"
								class="btn btn-default btn-hover-green" data-action="save"
								role="button">Save</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
