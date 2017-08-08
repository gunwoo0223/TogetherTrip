$(document).ready(function(){
	
	/*
	 * 원래는 $('#goodBtn').on('click', function(){
	 * }); 이런식으로 작성했는데, 동적이벤트처리(ajax로 넘어온 코드에 이벤트를 적용시키기) 때문에 아래처럼 처리한다.
	 */
	
	$(document).on('click', '#goodBtn', function(){
		if(sessionUId == "null" && sessionMId == "null"){
			alert("로그인후 이용이 가능합니다.");
			return false;
		}else if(sessionMId != "null"){
			alert("관리자는 좋아요를 누를 수 없습니다.");
			return false;
		}
		
		$.ajax({
			dataType : 'json',
			type : 'post',
			data : 'u_id='+sessionUId+'&f_num='+$('#f_num').val(),
			url : 'increaseFestivalGood.do',
			success : function(res){
				if(res == -1){
					alert("이미 좋아요를 하셨습니다!");
				} else {
					alert("좋아요를 누르셨습니다."+ res);
					$('.likebutton').children().remove();
					$('.likebutton').append('<button id="goodBtn" class="go-button" type="button"><span id="goodCount">'+res+'</span></button>');
				}
			}
		});
	});
});









