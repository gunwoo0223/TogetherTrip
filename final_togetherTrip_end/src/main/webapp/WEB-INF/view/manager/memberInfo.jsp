<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>

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
        
    <!-- Custom styles for this template -->
    <link href="manager/css/style.css" rel="stylesheet">
    <link href="manager/css/style-responsive.css" rel="stylesheet">
    <link href="manager/css/table-responsive.css" rel="stylesheet">
    
    <script type="text/javascript">
	$(document).ready(function(){
		$('.sidebar-menu a').removeClass('active');
		$('.sidebar-menu a:eq(12)').addClass('active');
	});
	</script>  
    
</head>

<body>

  <section id="container" >
      <%@include file="common/header.jsp" %>
 	  <%@include file="common/navigation.jsp" %>
      
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i>Member Information</h3>
		  		<div class="row mt">
			  		<div class="col-lg-12">
                      <div class="content-panel">
                      <div>
                      	<h4><i class="fa fa-angle-right"></i>MemberList</h4>
                      </div>
	                      <div class="col-sm-2" style="padding-left: 5px;padding-right: 0px;">
		                      <select class="form-control">
		                      	<option>전체</option>
		                      	<option>아이디</option>
		                      	<option>이름</option>
		                      	<option>핸드폰</option>
		                      	<option>이메일</option>
								<option>탈퇴회원</option>
		                      </select>
	                      </div>
	                      <div class="col-sm-3" style="padding-left: 0px;padding-right: 0px">
	                      	<input class="form-control" type="text" placeholder="search">
	                      </div>
	                      <div class="col-sm-2">
							<button type="button" class="btn btn-default">검색</button>
	                      </div>
                          <section id="unseen">
                            <table class="table table-condensed">
                              <thead>
                              <tr>
                                  <th style="width: 12%">ID</th>
                                  <th style="width: 12%">NAME</th>
                                  <th style="width: 10%">GENDER</th>
                                  <th style="width: 20%">PHONE</th>
                                  <th style="width: 20%">EMAIL</th>
                                  <th style="width: 20%">BIRTH</th>
                                  <th style="width: 6%">WITHDRAW</th>
                              </tr>
                              </thead>
                              <tbody>
                             <c:forEach items="${uList}" var="udto">
                              <tr>
                                  <td>${udto.uId}</td>
                                  <td>${udto.uName}</td>
                                  <td>${udto.uGender}</td>
                                  <td>${udto.uPhone}</td>
                                  <td>${udto.uEmail}</td>
                                  <td>${udto.uBirth}</td>
                                  <td>${udto.uWithdraw}</td>
                              </tr>
                              </c:forEach>
                              </tbody>
                          </table>
                          </section>
                  </div><!-- /content-panel -->
               </div><!-- /col-lg-4 -->			
		  	</div><!-- /row -->

							<div class="row text-center">
	    <div class="col-lg-12">
	    	<ul class="pagination">
	
	
	<!-- 이전버튼 출력 시작 -->
	<c:if test="${pgdto.startPage > 1}">
		<li><a href="memberInfo.do?currentPage=${pgdto.startPage-pgdto.blockPage}">&laquo;</a></li>
	</c:if>
	<!-- 이전 출력 끝 -->

	<!-- 페이지 출력 시작 -->
	<c:forEach var="i" begin="${pgdto.startPage}" end="${pgdto.endPage}">
		<c:url var="currPage" value="memberInfo.do">
			<c:param name="currentPage" value="${i}" />
		</c:url>

		<li><a href="${currPage}"> <c:out value="${i}" /></a></li>
	</c:forEach>
	<!-- 페이지 출력 끝 -->

	<!-- 다음버튼 출력 시작 -->
	<c:if test="${pgdto.totalPage>pgdto.endPage}">
		<li><a href="memberInfo.do?currentPage=${pgdto.startPage+pgdto.blockPage}">&raquo;</a></li>
	</c:if>
	<!--  다음 출력 끝 -->
	
	
			</ul>
		</div>
	</div>

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
    

</body>
</html>
