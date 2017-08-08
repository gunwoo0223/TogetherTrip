<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!DOCTYPE html>
<html lang="en">
  <head>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="manager/js/state.js" type="text/javascript"></script>
<script src="manager/js/file/bootstrap-filestyle.min.js" type="text/javascript"></script>

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

	<script type="text/javascript">
	$(document).ready(function(){
		$('.sidebar-menu a').removeClass('active');
		$('.sidebar-menu a:eq(2)').addClass('active');
	});
	</script> 

  </head>

  <body>

  <section id="container" >
      <%@include file="../common/header.jsp" %>
	  <%@include file="../common/navigation.jsp" %>

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i>Stay Form</h3>
        	
          	<!-- BASIC FORM ELELEMNTS -->
          	
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
            
              <!-- stay form-->        
              <form id="stay" action="stayInsert.do" method="post">
				<div class="form-group" style="width:10%;"> <!-- Name field -->
					<label class="control-label" for="m_id"><i class="fa fa-angle-right">hotel글쓴이</i></label>
					<input class="form-control" id="m_id" name="m_id" type="text"/>
				</div>
				<div class="form-group" style=""> <!-- title field -->
					<label class="control-label" for="s_title">제목</label>
					<input class="form-control" id="s_title" name="s_title" type="text"/>
				</div>
				<div class="form-group"> <!-- loc field -->
					<label class="control-label " for="s_loc">위치</label>
					<input class="form-control" id="s_loc" name="s_loc" type="text" placeholder="정확한 주소와 띄어쓰기를 해주세요"/>
				</div>
				
				
		<div class="row">
				<div class="col-xs-2">
				<div class="form-group"> <!--state field-->
					<label class="control-label" for="s_state">state</label>
					<select class="form-control" id="s_state" name="s_state">
						<option></option>
						<option value="인천">인천</option>
						<option value="서울">서울</option>
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
					<label class="control-label" for="s_city">city</label>
					<select class="form-control" id="s_city" name="s_city">
					</select>		
				</div>
			</div>
		</div>
		
				<div class="form-group"> <!-- tel field -->
					<label class="control-label " for="s_tel">문의/안내</label>
					<input class="form-control" id="s_tel" name="s_tel" type="text"/>
				</div>
				<div class="form-group"> <!-- type field -->
					<label class="control-label " for="s_type">숙소 종류</label>
					<input class="form-control" id="s_type" name="s_type" type="text"/>
				</div>
				
				<div class="form-group"> <!-- contents field -->
					<label class="control-label " for="s_contents">내용</label>
					<textarea class="form-control" cols="40" id="s_contents" name="s_contents" rows="10"></textarea>
				</div>
				
				<!--file field -->
				 <div class="form-group">
					 <label class="control-label " for="">파일 업로드</label>
					<input type="file" class="filestyle" data-icon="false" id="sfilename" name="sfilename"/>
					<br/>
					<input type="file" class="filestyle" data-icon="false" id="sfilename2" name="sfilename2"/>
					<br/>
					<input type="file" class="filestyle" data-icon="false" id="sfilename3" name="sfilename3"/>
					<br/>
					<input type="file" class="filestyle" data-icon="false" id="sfilename4" name="sfilename4"/>
				  </div>
				  
				<div class="form-group">
					<button class="btn btn-primary " name="submit" type="submit">확인</button>
				</div>
			</form>
                    
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
		</section><!--/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      
  </section>

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
