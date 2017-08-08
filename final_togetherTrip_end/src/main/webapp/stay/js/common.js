//개인정보수집 팝업
function AgreePopup() {
	//var left = 0; 
	//var top = 0;
	var pop_width=700;
	var pop_height=800;
	var left = ( $(window).scrollLeft() + ($(window).width() - pop_width) / 2 );
	var top = ( $(window).scrollTop() + ($(window).height() - pop_height) / 2 );
	
	var pop = window.open('/kor/common/social/agree.jsp','agreePop','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,width='+pop_width+'px,height='+pop_height+'px,top='+top+',left='+left+'');
	pop.focus();
	//return
}

//팝업
function PopupWin(Url,PopName) {
	var popWin = window.open(''+Url+'',''+val1+'','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,width=470px,height=365px,top=0,left=0');
	popWin.focus();
	//return
}

//메일 선택
function fnSelectEmail(id,obj){
	var mID = $("#"+id);
	var mObjVal = $(obj).val();
	
	//alert(mID +"==="+mObj);
	
	$(mID).val(mObjVal);
}

//메일 유효성검사
function fnEmailChk(val){
	var UserEmail = val;
	var regExp = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	//alert(UserEmail);
	if (!regExp.test(UserEmail)) {
		return false;
	}
	else {
		return true;
	}
}
