$(document).ready(function(){
	
	/* 명소 게시글을 올릴 때 유효성 검사 */
	$('#placeInsertBtn').on('click', function(){
		if($('#p_title').val() == ""){
			alert('제목을 입력하세요.');
			$('#p_title').focus();
			return false;
		}else if($('#p_loc').val() == ""){
			alert('위치를 입력하세요.');
			$('#p_loc').focus();
			return false;
		}else if($('#p_state').val() == ""){
			alert('도를 선택하세요.');
			$('#p_state').focus();
			return false;
		}else if($('#p_city').val() == ""){
			alert('시를 선택하세요.');
			$('#p_city').focus();
			return false;
		}else if($('#p_time').val() == ""){
			alert('시간을 입력하세요.');
			$('#p_time').focus();
			return false;
		}else if($('#p_holiday').val() == ""){
			alert('휴무일을 입력하세요.');
			$('#p_holiday').focus();
			return false;
		}else if($('#p_tel').val() == ""){
			alert('문의/안내를 입력하세요.');
			$('#p_tel').focus();
			return false;
		}else if($('#p_contents').val() == ""){
			alert('내용을 입력하세요.');
			$('#p_contents').focus();
			return false;
		}else if($('#p_contents').val().length > 1999){
			alert('글자수를 줄여주세요.');
			$('#p_contents').focus();
			return false;
		}else if($('#pfilename').val() == ""){
			alert('썸네일 이미지를 올려주세요!');
			$('#pfilename').focus();
			return false;
		}else if($('#pfilename2').val() == ""){
			alert('첫번 째 이미지를 올려주세요!');
			$('#pfilename2').focus();
			return false;
		}else if($('#pfilename3').val() == ""){
			alert('두번 째 이미지를 올려주세요!');
			$('#pfilename3').focus();
			return false;
		}else if($('#pfilename4').val() == ""){
			alert('세번 째 이미지를 올려주세요!');
			$('#pfilename4').focus();
			return false;
		}
		alert('글이 게시되었습니다!')
		return true;
	});
	
	/* 맛집 게시글을 올릴 때 유효성 검사 */
	$('#restaurantInsertBtn').on('click', function(){
		if($('#r_title').val() == ""){
			alert('제목을 입력하세요.');
			$('#r_title').focus();
			return false;
		}else if($('#r_loc').val() == ""){
			alert('위치를 입력하세요.');
			$('#r_loc').focus();
			return false;
		}else if($('#r_state').val() == ""){
			alert('도를 선택하세요.');
			$('#r_state').focus();
			return false;
		}else if($('#r_city').val() == ""){
			alert('시를 선택하세요.');
			$('#r_city').focus();
			return false;
		}else if($('#r_time').val() == ""){
			alert('시간을 입력하세요.');
			$('#r_time').focus();
			return false;
		}else if($('#r_holiday').val() == ""){
			alert('휴무일을 입력하세요.');
			$('#r_holiday').focus();
			return false;
		}else if($('#r_tel').val() == ""){
			alert('문의/안내를 입력하세요.');
			$('#r_tel').focus();
			return false;
		}else if($('#r_menu').val() == ""){
			alert('대표메뉴를 적어주세요.');
			$('#r_menu').focus();
			return false;
		}else if($('#r_contents').val() == ""){
			alert('내용을 입력하세요.');
			$('#r_contents').focus();
			return false;
		}else if($('#r_contents').val().length > 1999){
			alert('글자수를 줄여주세요.');
			$('#r_contents').focus();
			return false;
		}else if($('#rfilename').val() == ""){
			alert('썸네일 이미지를 올려주세요!');
			$('#rfilename').focus();
			return false;
		}else if($('#rfilename2').val() == ""){
			alert('첫번 째 이미지를 올려주세요!');
			$('#rfilename2').focus();
			return false;
		}else if($('#rfilename3').val() == ""){
			alert('두번 째 이미지를 올려주세요!');
			$('#rfilename3').focus();
			return false;
		}else if($('#rfilename4').val() == ""){
			alert('세번 째 이미지를 올려주세요!');
			$('#rfilename4').focus();
			return false;
		}
		alert('글이 게시되었습니다!')
		return true;
	});
	
	/* 축제 게시글을 올릴 때 유효성 검사 */
	$('#festivalInsertBtn').on('click', function(){
		if($('#f_title').val() == ""){
			alert('제목을 입력하세요.');
			$('#f_title').focus();
			return false;
		}else if($('#f_loc').val() == ""){
			alert('위치를 입력하세요.');
			$('#f_loc').focus();
			return false;
		}else if($('#f_state').val() == ""){
			alert('도를 선택하세요.');
			$('#f_state').focus();
			return false;
		}else if($('#f_city').val() == ""){
			alert('시를 선택하세요.');
			$('#f_city').focus();
			return false;
		}else if($('#f_time').val() == ""){
			alert('시간을 입력하세요.');
			$('#f_time').focus();
			return false;
		}else if($('#f_tel').val() == ""){
			alert('문의/안내를 입력하세요.');
			$('#f_tel').focus();
			return false;
		}else if($('#f_contents').val() == ""){
			alert('내용을 입력하세요.');
			$('#f_contents').focus();
			return false;
		}else if($('#f_contents').val().length > 1999){
			alert('글자수를 줄여주세요.');
			$('#f_contents').focus();
			return false;
		}else if($('#filename').val() == ""){
			alert('썸네일 이미지를 올려주세요!');
			$('#filename').focus();
			return false;
		}else if($('#filename2').val() == ""){
			alert('첫번 째 이미지를 올려주세요!');
			$('#filename2').focus();
			return false;
		}else if($('#filename3').val() == ""){
			alert('두번 째 이미지를 올려주세요!');
			$('#filename3').focus();
			return false;
		}else if($('#filename4').val() == ""){
			alert('세번 째 이미지를 올려주세요!');
			$('#filename4').focus();
			return false;
		}
		alert('글이 게시되었습니다!')
		return true;
	});
	
	
	/* 명소 게시글 수정할 경우 */
	$('#placeUpdateBtn').on('click', function(){
		if($('#p_title').val() == ""){
			alert("제목을 입력하세요.");
			$('#p_title').focus();
			return false;
		}else if($('#p_loc').val() == ""){
			alert("위치를 입력하세요.");
			$('#p_loc').focus();
			return false;
		}else if($('#p_state').val() == ""){
			alert("도를 입력하세요.");
			$('#p_state').focus();
			return false;
		}else if($('#p_city').val() == ""){
			alert("시를 입력하세요.");
			$('#p_city').focus();
			return false;
		}else if($('#p_time').val() == ""){
			alert("시간을 입력하세요.");
			$('#p_time').focus();
			return false;
		}else if($('#p_holiday').val() == ""){
			alert("휴무일을 입력하세요.");
			$('#p_holiday').focus();
			return false;
		}else if($('#p_tel').val() == ""){
			alert("문의/안내를 입력하세요.");
			$('#p_tel').focus();
			return false;
		}else if($('#p_contents').val() == ""){
			alert("내용을 입력하세요.");
			$('#p_contents').focus();
			return false;
		}
		alert("수정이 완료되었습니다!");
		return true;
	});
	
	/* 맛집 게시글 수정할 경우 */
	$('#restaurantUpdateBtn').on('click', function(){
		if($('#r_title').val() == ""){
			alert("제목을 입력하세요.");
			$('#r_title').focus();
			return false;
		}else if($('#r_loc').val() == ""){
			alert("위치를 입력하세요.");;
			$('#r_loc').focus();
			return false;
		}else if($('#r_state').val() == ""){
			alert("도를 입력하세요.");
			$('#r_state').focus();
			return false;
		}else if($('#r_city').val() == ""){
			alert("시를 입력하세요.");
			$('#r_city').focus();
			return false;
		}else if($('#r_time').val() == ""){
			alert("시간을 입력하세요.");
			$('#r_time').focus();
			return false;
		}else if($('#r_holiday').val() == ""){
			alert("휴무일을 입력하세요.");
			$('#r_holiday').focus();
			return false;
		}else if($('#r_tel').val() == ""){
			alert("문의/안내를 입력하세요.");
			$('#r_tel').focus();
			return false;
		}else if($('#r_menu').val() == ""){
			alert("대표메뉴를 입력하세요.");
			$('#r_menu').focus();
			return false;
		}else if($('#r_contents').val() == ""){
			alert("내용을 입력하세요.");
			$('#r_contents').focus();
			return false;
		}
		alert("수정이 완료되었습니다!");
		return true;
	});
	
	/* 축제 게시글 수정할 경우 */
	$('#festivalUpdateBtn').on('click', function(){
		if($('#f_title').val() == ""){
			alert("제목을 입력하세요.");
			$('#f_title').focus();
			return false;
		}else if($('#f_loc').val() == ""){
			alert("위치를 입력하세요.");
			$('#f_loc').focus();
			return false;
		}else if($('#f_state').val() == ""){
			alert("도를 입력하세요.");
			$('#f_state').focus();
			return false;
		}else if($('#f_city').val() == ""){
			alert("시를 입력하세요.");
			$('#f_city').focus();
			return false;
		}else if($('#f_time').val() == ""){
			alert("시간을 입력하세요.");
			$('#f_time').focus();
			return false;
		}else if($('#f_tel').val() == ""){
			alert("문의/안내를 입력하세요.");
			$('#f_tel').focus();
			return false;
		}else if($('#f_contents').val() == ""){
			alert("내용을 입력하세요.");
			$('#f_contents').focus();
			return false;
		}
		alert("수정이 완료되었습니다!");
		return true;
	});
	
});

/* 명소 게시글 삭제할 경우 */
function placeDeleteBtn(p_num){
	if(confirm('삭제하시겠습니까 ?') == true){
		location.href = 'placeDelete.do?p_num='+p_num;
		return true;
	}else{
		return false;
	}
}

/* 맛집 게시글 삭제할 경우 */
function restaurantDeleteBtn(r_num){
	if(confirm('삭제하시겠습니까 ?') == true){
		location.href = 'restaurantDelete.do?r_num='+r_num;
		return true;
	}else{
		return false;
	}
}

/* 축제 게시글 삭제할 경우 */
function festivalDeleteBtn(f_num){
	if(confirm('삭제하시겠습니까 ?') == true){
		location.href = 'festivalDelete.do?f_num='+f_num;
		return true;
	}else{
		return false;
	}
}





