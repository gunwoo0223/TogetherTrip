
$(document).ready(function(){
	
	/* 댓글등록 버튼을 눌렀을 때 */
	$('#replyWriteButton').on('click', function(){
		
		if($('#rpContents').val() == ""){
			alert("댓글 내용을 입력하세요!");
			$('#rpContents').focus();
			return false;
		}
		
		$.ajax({
			dataType : 'json',
			type : 'post',
			url : 'replyWriteProcess.do',
			data : 'rpContents='+$('#rpContents').val()
			+'&rpWriter='+$('#rpWriter').val()
			+'&rvNum='+$('#rvNum').val()
			+'&uId='+$('#uId').val()
			+'&mId='+$('#mId').val(),
			success : replyList
		});
		
		function replyList(res){
			 //기존에 있던 댓글리스트를  한번 삭제하고, 다시 ajax로 댓글리스트를 뿌려줌.
			$('.replyListForm .replyList').remove();

			//sessionUId는 client-side에서 session값을 받아야해서 detailForm.jsp에서 자바스크립트로 받아서
			//여기서 사용한 것. jQuery에서는 어떻게 받는지 몰라서 이렇게 우선 사용함.
			
			$.each(res, function(index, value){
				//$('.replyListForm').append('<div class="replyList"><div class="row"><div class="form-group"><label>작성자&nbsp;</label><label>'+value.rpWriter+'</label><label>&nbsp;작성시간</label><label>'+new Date(value.rpRegDate)+'</label><div class="pull-right"><label class="replyUpdateButton" id="'+value.rpNum+'"><a>&nbsp;수정&nbsp;</a></label><label class="replyDeleteButton" id="'+value.rpNum+'"><a>삭제&nbsp;</a></label></div></div></div><div class="row"><div class="form-group"><label>댓글내용&nbsp;</label><label>'+value.rpContents+'</label><hr/></div></div></div>');
				//$('.replyListForm').append('<div class="replyList"><div class="row"><div class="form-group"><label>작성자&nbsp;</label><label>'+value.rpWriter+'</label><label>&nbsp;작성시간</label><label>'+new Date(value.rpRegDate)+'</label><c:if test="${('+value.uId+' != null && '+value.uId+' == sessionScope.uId) || ('+value.mId+' != null && '+value.mId+' == sessionScope.mId)}"><div class="pull-right"><label class="replyUpdateButton" id="'+value.rpNum+'"><a>&nbsp;수정&nbsp;</a></label><label class="replyDeleteButton" id="'+value.rpNum+'"><a>삭제&nbsp;</a></label></div></c:if></div></div><div class="row"><div class="form-group"><label>댓글내용&nbsp;</label><label>'+value.rpContents+'</label><hr/></div></div></div>');
				if((value.uId != null && value.uId == sessionUId) || (value.mId != null && value.mId == sessionMId)){
					$('.replyListForm').append('<div class="replyList"><div class="row"><div class="form-group"><label>작성자&nbsp;</label><label>'+value.rpWriter+'</label><label>&nbsp;작성시간</label><label>'+new Date(value.rpRegDate)+'</label><div class="pull-right"><label class="replyUpdateButton" id="'+value.rpNum+'"><a>&nbsp;수정&nbsp;</a></label><label class="replyDeleteButton" id="'+value.rpNum+'"><a>삭제&nbsp;</a></label></div></div></div><div class="row"><div class="form-group"><label>댓글내용&nbsp;</label><label>'+value.rpContents+'</label><hr/></div></div></div>');
				}else{
					$('.replyListForm').append('<div class="replyList"><div class="row"><div class="form-group"><label>작성자&nbsp;</label><label>'+value.rpWriter+'</label><label>&nbsp;작성시간</label><label>'+new Date(value.rpRegDate)+'</label></div></div><div class="row"><div class="form-group"><label>댓글내용&nbsp;</label><label>'+value.rpContents+'</label><hr/></div></div></div>');
				}
			});
			
			$('#rpContents').val('');
		}
		
	});

	
	/* 댓글 삭제를 눌렀을 때 */
	$(document).on('click', '.replyDeleteButton', function(){
		
		alert("삭제하시겠습니까?");
		
		var rpNum = $(this).prop('id'); //label에 있는 class를 대상으로 이 함수가 실행됨 -> this.prop id하면 그 label의 id값을 가져옴.

		$.ajax({
			dataType : 'json',
			type : 'post',
			url : 'replyDeleteProcess.do',
			data : 'rvNum='+$('#rvNum').val()+'&rpNum='+rpNum,
			success : replyList
		});
		
		function replyList(res){
			 //기존에 있던 댓글리스트를  한번 삭제하고, 다시 ajax로 댓글리스트를 뿌려줌.
			$('.replyListForm .replyList').remove();

			//sessionUId는 client-side에서 session값을 받아야해서 detailForm.jsp에서 자바스크립트로 받아서
			//여기서 사용한 것. jQuery에서는 어떻게 받는지 몰라서 이렇게 우선 사용함.
			
			$.each(res, function(index, value){
				//$('.replyListForm').append('<div class="replyList"><div class="row"><div class="form-group"><label>작성자&nbsp;</label><label>'+value.rpWriter+'</label><label>&nbsp;작성시간</label><label>'+new Date(value.rpRegDate)+'</label><div class="pull-right"><label class="replyUpdateButton" id="'+value.rpNum+'"><a>&nbsp;수정&nbsp;</a></label><label class="replyDeleteButton" id="'+value.rpNum+'"><a>삭제&nbsp;</a></label></div></div></div><div class="row"><div class="form-group"><label>댓글내용&nbsp;</label><label>'+value.rpContents+'</label><hr/></div></div></div>');
				//$('.replyListForm').append('<div class="replyList"><div class="row"><div class="form-group"><label>작성자&nbsp;</label><label>'+value.rpWriter+'</label><label>&nbsp;작성시간</label><label>'+new Date(value.rpRegDate)+'</label><c:if test="${('+value.uId+' != null && '+value.uId+' == sessionScope.uId) || ('+value.mId+' != null && '+value.mId+' == sessionScope.mId)}"><div class="pull-right"><label class="replyUpdateButton" id="'+value.rpNum+'"><a>&nbsp;수정&nbsp;</a></label><label class="replyDeleteButton" id="'+value.rpNum+'"><a>삭제&nbsp;</a></label></div></c:if></div></div><div class="row"><div class="form-group"><label>댓글내용&nbsp;</label><label>'+value.rpContents+'</label><hr/></div></div></div>');
				if((value.uId != null && value.uId == sessionUId) || (value.mId != null && value.mId == sessionMId)){
					$('.replyListForm').append('<div class="replyList"><div class="row"><div class="form-group"><label>작성자&nbsp;</label><label>'+value.rpWriter+'</label><label>&nbsp;작성시간</label><label>'+new Date(value.rpRegDate)+'</label><div class="pull-right"><label class="replyUpdateButton" id="'+value.rpNum+'"><a>&nbsp;수정&nbsp;</a></label><label class="replyDeleteButton" id="'+value.rpNum+'"><a>삭제&nbsp;</a></label></div></div></div><div class="row"><div class="form-group"><label>댓글내용&nbsp;</label><label>'+value.rpContents+'</label><hr/></div></div></div>');
				}else{
					$('.replyListForm').append('<div class="replyList"><div class="row"><div class="form-group"><label>작성자&nbsp;</label><label>'+value.rpWriter+'</label><label>&nbsp;작성시간</label><label>'+new Date(value.rpRegDate)+'</label></div></div><div class="row"><div class="form-group"><label>댓글내용&nbsp;</label><label>'+value.rpContents+'</label><hr/></div></div></div>');
				}
			});
			
			$('#rpContents').val('');
		}
	});
	
	/* 댓글 수정을 눌렀을 때 */
	$(document).on('click', '.replyUpdateButton', function(){
		alert('삭제버튼눌림!!');
	});
	
	//정적인 코드에서 이벤트걸었을 때는 아래처럼 하면 되는데 ajax를 통해 가져온 코드는 동적인 코드로, 동적인코드로 이벤트처리할 때는 위 처럼 해주어야 한다.
	/* 댓글 삭제를 눌렀을 때 */
/*	$('.replyDeleteButton').on('click', function(){
		alert('삭제버튼눌림!!');
	});
*/
	
	/* 댓글 수정을 눌렀을 때 */
/*	$('.replyUpdateButton').on('click', function(){
		alert('수정버튼눌림!!');
	});
*/
	
	
});






