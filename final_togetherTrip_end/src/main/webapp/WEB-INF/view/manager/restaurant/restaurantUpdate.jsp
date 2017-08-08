<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="manager/js/state.js" type="text/javascript"></script>
<script src="manager/js/file/bootstrap-filestyle.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('.sidebar-menu a').removeClass('active');
	$('.sidebar-menu a:eq(7)').addClass('active');
	
 	var state = $("#r_stateBox").val();
	var sst = $("#r_state option");

	for(i=1; i<sst.length; i++){
		if(sst.eq(i).val() == state){
			$("#r_state option:eq("+i+")").prop("selected",true);
			break;
		}
	}
});

</script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>TT MANAGER</title>

    <!-- Bootstrap core CSS -->
    <link href="manager/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="manager/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="manager/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="manager/js/bootstrap-daterangepicker/daterangepicker.css" />
        
    <!-- Custom styles for this template -->
    <link href="manager/css/style.css" rel="stylesheet">
    <link href="manager/css/style-responsive.css" rel="stylesheet">

  </head>

  <body>

  <section id="container" >
      <%@include file="../common/header.jsp" %>
 	  <%@include file="../common/navigation.jsp" %>
 	  
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i> Restaurant Update            
          	</h3>
        	
          	<!-- BASIC FORM ELELEMNTS -->
             
          	
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
         	<!--place form-->
			 <form id="restaurant" action="restaurantUpdate.do" method="post" enctype="multipart/form-data">
				<input type="hidden" name="r_num" value="${rdto.r_num}"/>
				<div class="form-group" style=""> <!-- title field -->
					<label class="control-label" for="r_title">제목</label>
					<input class="form-control" id="r_title" name="r_title" type="text" value="${rdto.r_title}"/>
				</div>
				<div class="form-group"> <!-- loc field -->
					<label class="control-label " for="r_loc">위치</label>
					<input class="form-control" id="r_loc" name="r_loc" type="text" value="${rdto.r_loc}"/>
				</div>
		
		
		<div class="row">
				<div class="col-xs-2">
				<div class="form-group"> <!--state field-->
					<label class="control-label" for="r_state">state</label>
					<input type="hidden" id="r_stateBox" value="${rdto.r_state}"/>
					<select class="form-control" id="r_state" name="r_state">
						<option></option>
						<option value="인천">인천</option>
						<option value="서울" >서울</option>
						<option value="경기">경기</option>
						<option value="강원">강원</option>
						<option value="충남">충남</option>
						<option value="세종">세종</option>
						<option value="충북">충북</option>
						<option value="대전">대전</option>
						<option value="경북">경북</option>
						<option value="전북">전북</option>
						<option value="대구">대구</option>
						<option value="광주">광주</option>
						<option value="경남">경남</option>
						<option value="울산">울산</option>
						<option value="부산">부산</option>
						<option value="전남">전남</option>
						<option value="제주">제주</option>
					</select>
				</div>
			</div>
			
			<!--city field-->
			<div class="col-xs-2">
				<div class="form-group">
					<label class="control-label" for="r_city">city</label>
					<select class="form-control" id="r_city" name="r_city">
					<option>${rdto.r_city}</option>
					</select>		
				</div>
				
				</div>
		</div>
				<div class="form-group" > <!-- time field -->
					<label class="control-label " for="r_time">시간</label>
					<input class="form-control" id="r_time" name="r_time" type="text" value="${rdto.r_time}"/>
				</div>
				<div class="form-group"> <!--holiday field -->
					<label class="control-label " for="r_holiday">휴무일</label>
					<input class="form-control" id="r_holiday" name="r_holiday" type="text" value="${rdto.r_holiday}"/>
				</div>
				<div class="form-group"> <!-- tel field -->
					<label class="control-label " for="r_tel">문의/안내</label>
					<input class="form-control" id="r_tel" name="r_tel" type="text" value="${rdto.r_tel}"/>
				</div>
				<div class="form-group"> <!-- menu field -->
					<label class="control-label " for="r_menu">대표메뉴</label>
					<input class="form-control" id="r_menu" name="r_menu" type="text" value="${rdto.r_menu}"/>
				</div>
				<div class="form-group"> <!-- contents field -->
					<label class="control-label " for="r_contents">내용</label>
					<textarea class="form-control" cols="40" id="r_contents" name="r_contents" rows="10">${rdto.r_contents}</textarea>
				</div>
				
				
				<!--file field -->
				 <div class="form-group">
					<label class="control-label">파일 업로드</label>
					<c:forEach items="${rdto.rImage}" var="rList">
					<input type="file" class="filestyle" data-icon="false" id="rfilename" name="rfilename"/>
					<span>${fn:substringAfter(rList.r_thumbnail, "_") }</span>
					<br/>
					<input type="file" class="filestyle" data-icon="false" id="rfilename2" name="rfilename2"/>
					<span>${fn:substringAfter(rList.r_img1, "_") }</span>
					<br/>
					<input type="file" class="filestyle" data-icon="false" id="rfilename3" name="rfilename3"/>
					<span>${fn:substringAfter(rList.r_img2, "_") }</span>
					<br/>
					<input type="file" class="filestyle" data-icon="false" id="rfilename4" name="rfilename4"/>
				 	<span>${fn:substringAfter(rList.r_img3, "_") }</span>
				 	</c:forEach>
				  </div>
				
				<div class="form-group">
					<button class="btn btn-primary" id="restaurantUpdateBtn" type="submit">확인</button>
				</div>
				
				</form>

                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
		</section><!--/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      
  </section>
  
  	<!-- 유효성 검사 -->
  	<script src="manager/js/manager.js"></script>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="manager/js/jquery.js"></script>
    <script src="manager/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="manager/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="manager/js/jquery.scrollTo.min.js"></script>
    <script src="manager/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="manager/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="manager/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="manager/js/bootstrap-switch.js"></script>
	
	<!--custom tagsinput-->
	<script src="manager/js/jquery.tagsinput.js"></script>
	
	<!--custom checkbox & radio-->
	
	<script type="text/javascript" src="manager/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="manager/js/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="manager/js/bootstrap-daterangepicker/daterangepicker.js"></script>
	
	<script type="text/javascript" src="manager/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	
	
	<script src="manager/js/form-component.js"></script>    
    
    
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>
