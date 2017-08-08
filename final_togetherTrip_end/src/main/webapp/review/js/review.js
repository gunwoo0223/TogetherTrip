$(document).ready(function(){

	/* 글쓰기 버튼을 눌렀을 때 */
	$('#reviewWriteButton').on('click',function(){
		if($('#rvTitle').val() == ""){
			alert("제목을 입력하세요.");
			$('#rvTitle').focus();
			return false;
		}else if($('#rvContents').val() == ""){
			alert("내용을 입력하세요.");
			$('#rvContents').focus();
			return false;
		}
	});
	
	/* 상세페이지에서 수정버튼 눌렀을 때 */
	$('#reviewUpdateForm').on('click',function(){
		$(location).attr('href', 'reviewUpdateForm.do?rvNum='+$('#rvNum').val());
	});
	
	/* 상세페이지에서 삭제버튼 눌렀을 때 */
	$('#reviewDelete').on('click',function(){
		alert('삭제하시겠습니까 ?');
		$(location).attr('href', 'reviewDeleteProcess.do?rvNum='+$('#rvNum').val());
	});
	
	
});
