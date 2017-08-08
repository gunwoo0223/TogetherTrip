<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>회원가입</title>

    <!-- Bootstrap -->
    <link href="user/join/css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="user/join/css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="user/join/css/style.css" media="screen" title="no title" charset="utf-8">
	
	<!-- radio button, select box -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>

	<!-- daum address api -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="user/join/js/address.js"></script>
	
	<!-- 유효성 검사 -->
	<script src="user/join/js/join.js"></script>

  </head>
  <body>
      <article class="container">
        <div class="col-md-12">
        <div class="page-header">
    	    <h1>회원가입</h1>
        </div>
        <form action="joinProcess.do" method="post" class="form-horizontal">
        <div class="form-group">
          <label class="col-sm-3 control-label" for="uId">아이디</label>
        <div class="col-sm-5">
          <input class="form-control" id="uId" type="text" name="uId" placeholder="아이디">
        </div>
        <button class="btn btn-primary" id="idChk" type="button">중복확인</button>
        <div id="idChkMsg">
		</div>
        </div>
        <div class="form-group">
          <label class="col-sm-3 control-label" for="uPw">비밀번호</label>
        <div class="col-sm-6">
          <input class="form-control" id="uPw" type="password" name="uPw" placeholder="비밀번호 (영문, 숫자, 특수문자 포함 8자 이상)">
        </div>
        </div>
          <div class="form-group">
              <label class="col-sm-3 control-label" for="uPwChk">비밀번호 확인</label>
             <div class="col-sm-6">
              <input class="form-control" id="uPwChk" type="password" name="uPwChk" placeholder="비밀번호 확인">
             </div>
          </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="uName">이름</label>
          <div class="col-sm-6">
            <input class="form-control" id="uName" type="text" name="uName" placeholder="이름">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-3 control-label" for="uGender">성별</label>
          <div class="col-sm-6">
 		  <label class="control-label" style="padding-right:20px;">
	 	    <input type="radio" name="uGender" id="uGender" value="남" checked="checked"> 남
		  </label>
		  <label class="control-label">
	 	    <input type="radio" name="uGender" id="uGender" value="여"> 여
		  </label>
		  </div>
        </div>
        
        <div class="form-group">
          <label class="col-sm-3 control-label" for="uBirth">생년월일</label>
        <div class="col-sm-2">
	    <select class="form-control" name="uYear" id="uYear">
	      <c:forEach begin="1910" end="2017" var="year">
	       <option value="${year}">${year}</option>
	      </c:forEach>
        </select>
        </div>
        <label class="col-xs-1 control-label" for="uBirth" style="width:31px;padding-left: 1px;">년</label>
        <div class="col-sm-1">
	    <select class="form-control" name="uMonth" id="uMonth">
	      <c:forEach begin="1" end="12" var="month">
	       <option value="${month}">${month}</option>
	      </c:forEach>
        </select>
        </div>
        <label class="col-xs-1 control-label" for="uBirth" style="width:31px;padding-left: 1px;">월</label>
        <div class="col-sm-1">
	    <select class="form-control" name="uDay" id="uDay">
	      <c:forEach begin="1" end="31" var="day">
	       <option value="${day}">${day}</option>
	      </c:forEach>
        </select>
        </div>
        <label class="col-xs-1 control-label" for="uBirth" style="width:31px;padding-left: 1px;">일</label>
       </div>

        <div class="form-group">
      	  <label class="col-sm-3 control-label" for="uAddress">주소</label>
      	  <div class="col-sm-2">
          <input class="form-control" name="uAddressNumber" id="sample4_postcode" type="text" placeholder="우편번호" readonly="readonly">
       	  </div>
		  <input class="btn btn-warning" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
        	<span id="guide" style="color:#999"></span>
        </div>
        
        <div class="form-group">
      	  <label class="col-sm-3 control-label" for="inputAddress"></label>
		  <div class="col-sm-6">
          <input class="form-control" id="sample4_roadAddress" type="text" name="uAddressBasic" placeholder="도로명주소/지번명" readonly="readonly">
          </div>
          <span id="guide" style="color:#999"></span>
        </div>
        
        <div class="form-group">
      	  <label class="col-sm-3 control-label" for="inputAddress" ></label>
          <div class="col-sm-6">
          <input class="form-control" id="sample4_jibunAddress" type="text" name="uAddressDetail" placeholder="상세주소">
          </div>
		  <span id="guide" style="color:#999"></span>
        </div>
        
        <div class="form-group">
         <label class="col-sm-3 control-label" for="uPhone">휴대폰번호</label>
          <div class="col-sm-6">
           <input type="tel" class="form-control" id="uPhone" name="uPhone" placeholder="- 없이 입력해 주세요" />
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-3 control-label" for="uEmail">이메일</label>
        <div class="col-sm-5">
          <input class="form-control" id="uEmail" type="email" name="uEmail" placeholder="이메일">
        </div>
        <button class="btn btn-success" id="sendNumBtn" type="button">인증번호</button>
        <input type="hidden" id="sendNum"/>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="chkNum">인증번호 확인</label>
          <div class="col-sm-5">
              <input class="form-control" id="chkNum" type="text" placeholder="인증번호">
          </div>
          <button class="btn btn-success" id="chkNumBtn" type="button">번호확인</button>
        </div>
        <div class="form-group">
          <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit" id="join">회원가입</button>
            <a href="main.do"><button class="btn btn-danger" type="button">가입취소</button></a>
          </div>
        </div>
        </form>
          <hr>
        </div>
      </article>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="user/join/js/bootstrap.min.js"></script>
  </body>
</html>

