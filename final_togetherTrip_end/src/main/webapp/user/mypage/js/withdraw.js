$(document).ready(function(){
	$('#withdrawBtn').on('click', function(){
		if(!$('#withdrawChk').is(':checked')){
			alert("동의하기에 체크를 해주세요.");
			$('#withdrawChk').focus();
			return false;
		}else if($('#uPw').val() == ""){
			alert("비밀번호를 입력해주세요.");
			$('#uPw').focus();
			return false;
		}
		$.ajax({
			type : "post",
			dataType : "json",
			url : "userChk.do",
			data : "uId="+$('#uId').val()+"&uPw="+$('#uPw').val(),
			success : function(res){
				if(res.userChk == 1){
					location.href ='withdrawProcess.do?uId='+$('#uId').val();
					alert("회원탈퇴를 완료하였습니다.");
				}else{
					alert("비밀번호가 일치하지 않습니다.");
				}
			}
		});
	});
});





