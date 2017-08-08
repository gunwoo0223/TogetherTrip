$(document).ready(function() {
	
	//회원가입 시 데이터 유효성검사.
	$('#updateUserInfo').on('click', function() {

		//비밀번호 영문,숫자,특수문자 조합을 위한 변수선언.
		var pw = $('#uPw').val();
		var pwNum = pw.search(/[0-9]/g);
		var pwEng = pw.search(/[a-z]/ig);
		var pwSpe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		
		if ($('#uId').val() == "") {
			alert("아이디를 입력하세요.");
			$('#uId').focus();
			return false;
		} else if ($('#uId').val().length > 20) {
			alert("아이디는 20자리 이하로 입력하세요.");
			$('#uId').focus();
			return false;
		} else if ($('#uPw').val() == "") {
			alert("비밀번호를 입력하세요.");
			$('#uPw').focus();
			return false;
		} else if (pw.length < 8 || pw.length > 20) {
			alert("비밀번호를 8자리 이상 20자리 이하로 입력해주세요.");
			$('#uPw').focus();
			return false;
		} else if (pw.search(/\s/) != -1) {
			alert("비밀번호에 스페이스(공백)는 제외해 주세요.");
			$('#uPw').focus();
			return false;
		} else if (pwNum < 0 || pwEng < 0 || pwSpe < 0) {
			alert("비밀번호는 영문,숫자,특수문자를 혼합하여 입력해주세요.");
			$('#uPw').focus();
			return false;
		} else if ($('#uPwChk').val() == "") {
			alert("비밀번호 확인을 입력하세요.");
			$('#uPwChk').focus();
			return false;
		} else if ($('#uPwChk').val() != $('#uPw').val()) {
			alert("비밀번호가 다릅니다.");
			$('#uPwChk').focus();
			return false;
		} else if ($('#uName').val() == "") {
			alert("이름을 입력하세요.");
			$('#uName').focus();
			return false;
		} else if ($('#uName').val().length > 20) {
			alert("이름은 20글자 이하로 작성해주세요.");
			$('#uName').focus();
			return false;
		} else if ($('#uGender').val() == "") {
			alert("성별을 입력하세요.");
			$('#uGender').focus();
			return false;
		} else if ($('#uYear').val() == "") {
			alert("연도를 입력하세요.");
			$('#uYear').focus();
			return false;
		} else if ($('#uMonth').val() == "") {
			alert("월을 입력하세요.");
			$('#uMonth').focus();
			return false;
		} else if ($('#uDay').val() == "") {
			alert("일을 입력하세요.");
			$('#uDay').focus();
			return false;
		} else if ($('#sample4_postcode').val() == "") {
			alert("우편번호를 입력하세요.");
			$('#sample4_postcode').focus();
			return false;
		} else if ($('#sample4_jibunAddress').val() == "") {
			alert("상세정보를 입력하세요.");
			$('#sample4_jibunAddress').focus();
			return false;
		} else if ($('#sample4_jibunAddress').val().length > 100) {
			alert("상세정보는 100글자 이하로 작성해주세요.");
			$('#sample4_jibunAddress').focus();
			return false;
		} else if ($('#uPhone').val() == "") {
			alert("핸드폰번호를 입력하세요.");
			$('#uPhone').focus();
			return false;
		} else if (/[^0123456789]/g.test($('#uPhone').val())) {
			alert("핸드폰번호를 숫자로만 입력해주세요.");
			$('#uPhone').focus();
			return false;
		} else if ($('#uPhone').val().length > 11 || $('#uPhone').val().length < 10) {
			alert("핸드폰번호는 10자리 혹은 11자리로 작성해주세요.");
			$('#uPhone').focus();
			return false;
		} else if ($('#uEmail').val() == "") {
			alert("이메일주소를 입력하세요.");
			$('#uEmail').focus();
			return false;
		}
		alert('['+$('#uName').val()+']님 회원정보가 성공적으로 수정되었습니다!');
		return true;
	});
});

//idChk 성공 시 보여줄 내용
/*function viewMessage(data){
	$('#idChkMsg').empty();
	document.getElementById('idChkMsg').value = data;
	alert(data);
};*/
