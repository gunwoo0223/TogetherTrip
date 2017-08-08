var stateName = '서울';
var cityName = '전체';
var topicList = 'all';

$(document).ready(function() {
	// 지역 선택
	$('.area-map ul li button').on('click', selectAreaProcess);
	
	// 데이터 보내기
	$('#searchForm').submit(function(event) {
		// 주제 선택
		$('input:checkbox[name=topic-check]').each(function() {
			if ($(this).is(':checked')) {
				topicList += ":" + $(this).val();
			}
		});

		$(this).append('<input type="hidden" name="state" value="' + stateName + '"/>');
		$(this).append('<input type="hidden" name="city" value="' + cityName + '"/>');
		$(this).append('<input type="hidden" name="topicList" value="' + topicList + '"/>');
		$(this).append('<input type="hidden" name="topic" value="all"/>');
	});
	
	$('input:checkbox[name=topic-check]').each(function() {
		var self = $(this),
		label = self.next(),
		label_text = label.text();
		
		label.remove();
		self.iCheck({
			checkboxClass: 'icheckbox_line-orange',
		    radioClass: 'iradio_line-orange',
		    insert: '<div class="icheck_line-icon"></div>' + label_text
		});
	});
	
	$('.search-reset-button button').on('click', function() {
		$(location).attr('href', 'allSearch.do');
	});
});

function selectAreaProcess() {
	var chkState = $(this).val();
	var cityArr;

	$('.area-category').children().remove();

	if (chkState == '서울') {
		cityArr = ["전체", "강남", "강동", "강북", "강서", "관악", "광진", "구로", "금천", "노원",
				"도봉", "동대문", "동작", "마포", "서대문", "서초", "성동", "성북", "송파", "양천",
				"영등포", "용산", "은평", "종로", "중구", "중랑" ];
	} else if(chkState == '인천') {
		cityArr = ["전체", "강화군", "계양구", "남구", "남동구", "동구", "부평구", "서구", "연수구", "옹진군", "중구"];
	} else if(chkState == '강원') {
		cityArr = ["전체", "강릉시", "고성군", "동해시", "삼척시", "속초시", "양구군", "양양군", "영월군", "원주시", "인제군", 
			"정선군", "철원군", "춘천시", "태백시", "평창군", "홍천군", "화천군", "횡성군"];
	} else if(chkState == '경기') {
		cityArr = ["전체", "가평군", "고양시", "과천시", "광명시", "광주시", "구리시", "군포시", "김포시", "남양주시", "동두천시",
			"부천시", "성남시", "수원시", "시흥시", "안산시", "안성시", "안양시", "양주시", "양평군", "여주시", "연천군", "오산시",
			"용인시", "의왕시", "의정부시", "이천시", "파주시", "평택시", "포천시", "하남시", "화성시"];
	} else if(chkState == '충북') {
		cityArr = ["전체", "괴산", "단양", "보은", "영동", "옥천", "음성", "제천", "진천", "청주", "충주", "증평"];
	} else if(chkState == '충남') {
		cityArr = ["전체", "공주시", "금산군", "논산시", "당진시", "보령시", "부여군", "서산시", "서천군", "아산시", "예산군", "천안시", "청양군", "태안군",
			"홍성군", "계룡시"];
	} else if(chkState == '세종') {
		cityArr = ["전체", "세종특별자치시"];
	} else if(chkState == '대전') {
		cityArr = ["전체", "대덕구", "동구", "서구", "유성구", "중구"];
	} else if(chkState == '경북') {
		cityArr = ["전체", "경산시", "경주시", "고령군", "구미시", "군위군", "김천시", "문경시", "봉화군", "상주시", "성주군", "안동시", "영덕군", "영양군",
			"영주시", "영천시", "예천군", "울릉군", "울진군", "의성군", "청도군", "청송군", "칠곡군", "포항시"];
	} else if(chkState == '경남') {
		cityArr = ["전체", "거제시", "거창군", "고성군", "김해시", "남해군", "밀양시", "사천시", "산청군", "양산시", "의령군", "진주시", "창녕군", "창원시",
			"통영시", "하동군", "함안군", "함양군", "합천군"];
	} else if(chkState == '대구') {
		cityArr = ["전체", "남구", "달서구", "달성군", "동구", "북구", "서구", "수성구", "중구"];
	} else if(chkState == '울산') {
		cityArr = ["전체", "중구", "남구", "동구", "북구", "울주군"];
	} else if(chkState == '부산') {
		cityArr = ["전체", "강서구", "금정구", "기장군", "남구", "동구", "동래구", "부산진구", "북구", "사상구", "사하구", "서구", "수영구", "연제구", "영도구",
			"중구", "해운대구"];
	} else if(chkState == '전북') {
		cityArr = ["전체", "고창군", "군산시", "김제시", "남원시", "무주군", "부안군", "순창군", "완주군", "익산시", "임실군", "장수군", "전주시", "정읍시", "진안군"];
	} else if(chkState == '전남') {
		cityArr = ["전체", "강진군", "고흥군", "곡성군", "광양시", "구례군", "나주시", "담양군", "목포시", "무안군", "보성군", "순천시", "신안군", "여수시", "영광군",
			"영암군", "완도군", "장성군", "장흥군", "진도군", "함평군", "해남군", "화순군"];
	} else if(chkState == '광주') {
		cityArr = ["전체", "광산구", "남구", "동구", "북구", "서구"];
	} else if(chkState == '제주') {
		cityArr = ["전체", "서귀포시", "제주시"];
	}
	
	// 지역선택 표시
	$('.area-category').append('<ul></ul>');
	$.each(cityArr, function(index, value){
		$('.area-category ul').append('<li><button type="button" value="' + value + '">' 
				+ value + '</button></li>');
	});
	
	// 지역선택 결과 표시 초기화
	$('.area-category').append('<p></p>');
	$('.area-category p').append('<b><span>' + chkState + '</span><span>전체</span>지역이 선택되었습니다.</b>');
	
	// 상세 지역 선택
	$('.area-category ul li button').on('click',{stateName : chkState}, selectCityProcess);
}

function selectCityProcess(event) {
	cityName = $(this).val();
	stateName = event.data.stateName;
	$('.area-category p').remove();
	
	$('.area-category').append('<p></p>');
	$('.area-category p').append('<b><span>' + stateName + '</span><span>' + cityName + '</span>지역이 선택되었습니다.</b>');
}