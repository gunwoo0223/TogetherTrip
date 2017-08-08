<!DOCTYPE html>
<html class="index" lang="ko"> 
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="viewport" content="width=1024" />
	<link rel="stylesheet" href="http://s1.daumcdn.net/svc/attach/U0301/cssjs/map/1706191819/app_A.css">
	<link rel="stylesheet" href="http://s1.daumcdn.net/svc/attach/U0301/cssjs/map/1706191819/app_B.css">

<link rel="icon" type="image/x-icon" href="/favicon.ico" />
	
<title>Daum 지도</title>
<script type="text/javascript">
document.domain='daum.net';
</script>





<meta property="og:site_name" content="Daum 지도">
<meta property="og:title" content="Daum 지도">
<meta property="og:description" content="로드뷰부터 길찾기까지, 버스부터 지하철까지. 한 번에 다 되는 다음지도로 생활을 바꾸다!">
<meta property="og:type" content="websit">
<meta property="og:image" content="http://t1.daumcdn.net/localimg/localimages/07/2015/mobileweb/ogimage.png">
	
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Daum 지도">
<meta name="twitter:description" content="로드뷰부터 길찾기까지, 버스부터 지하철까지. 한 번에 다 되는 다음지도로 생활을 바꾸다!">
<meta name="twitter:image" content="http://t1.daumcdn.net/localimg/localimages/07/2015/mobileweb/twimage.png">

<meta name="description" content="로드뷰부터 길찾기까지, 버스부터 지하철까지. 한 번에 다 되는 다음지도로 생활을 바꾸다!"><link rel="search" type="application/opensearchdescription+xml" href="/OpenSearch.xml" title="Daum 지도">
</head>
<body class="MAP">
<div id="daumIndex">
	<a href="#localInfo">본문 바로가기</a>
	<a href="#info">메뉴 바로가기</a>
</div>
<div id="wrapMinidaum" class="Minidaum"></div>

<div class="IE6MIN"><div id="header" class="Header">
	<div class="Title">
		<a id="daum_" class="daum" href="http://www.daum.net/?nil_profile=daum&amp;nil_src=local"><img width="51" height="27" src="http://t1.daumcdn.net/localimg/localimages/07/2013/map/common/daumlogo_131114.gif" alt="Daum"></a>
		<a id="local" class="local" href="?nil_profile=title&amp;nil_src=local"><span class="ir_wa">지도</span></a>
	</div>
	<strong class="screen_out">관련서비스</strong>
	<ul id="daumRelServices" class="Outgoing">
		<li><a href="#" id="mapapp" class="mapapp link_services link_services1" title="지도앱"><span class="ir_wa">지도앱</span></a></li>
		<li><a href="http://place.map.daum.net/heritage" target="_top" class="heritage link_services link_services3"><span class="ir_wa">문화유산</span></a></li>
	</ul>
	<strong class="screen_out">검색</strong>
	<div id="search" class="Search">
		<form id="search.keyword" class="KeywordSearch"
			onsubmit="window.QUERY=this.elements[0].value;return false">
			<label id="search.keyword.ad" class="ad" for="search.keyword.query"></label>				
			<fieldset class="fld_inside">
				<legend class="screen_out">검색어 입력폼</legend>
				<div class="box_searchbar">
					<input id="search.keyword.query" title="검색어 입력" class="query tf_keyword" type="text" maxlength="100" autocomplete="off" accesskey="s" name="q" />
					<button id="search.keyword.submit" class="go ico_search btn_search" type="button"><span class="ir_wa">검색</span></button>
				</div>
				<div class="choice_currentmap">
					<input type="checkbox" id="boundscheck" class="screen_out"/> 
					<label id="search.keyword.bounds" for="boundscheck" class="lab_currentmap INACTIVE">
						<span id="search.keyword.currentmap" class="ico_currentmap"></span>
						화면 내 장소 검색
					</label>
				</div>
			</fieldset>
			<blockquote id="search.keyword.querySuggest" class="suggest"></blockquote>		
		</form>
	</div>
</div></div>
<div id="info" class="Info">

	<div id="info.header" class="header">
		<div id="info.header.main" class="main">
			<ul class="menu">
				<li id="search.tab1" class="keyword keyword-ACTIVE">
					<a href="#" class="mainmenutab" title="지도검색">지도검색</a>
				</li>
				<li id="search.tab2" class="carRoute carRoute-INACTIVE">
					<a href="#" class="mainmenutab" title="길찾기검색">길찾기검색</a>
				</li>
				<li id="search.tab3" class="transitRoute transitRoute-INACTIVE">
					<a href="#" class="mainmenutab" title="실시간버스검색">실시간버스검색</a>	
				</li>
				<li id="search.tab4" class="subwayRoute subwayRoute-INACTIVE">
					<a href="#" class="mainmenutab" title="지하철노선">지하철노선</a>
				</li>
				<li id="search.tab5" class="favorite favorite-INACTIVE">
					<a href="#" class="mainmenutab" title="즐겨찾기">즐겨찾기</a>
				</li>
			</ul>
            <a href="#" id="favorite.viewMode" class="favorite_button">즐겨찿기 off</a>
			
			<div id="info.header.theme" class="theme">
			    <div class="reportError">
			        <span id="info.header.approxAddr" class="approxAddr">&nbsp;</span>
			        <a id="info.header.reportError" href="iptargeting/form" class="reportbug">오류신고</a>
			    </div>
			</div>

            <div class="favorite_tooltip HIDDEN">
				<p class="favorite_on HIDDEN">
                    별을 켜면 지도위에서<br/>즐겨찾기한 장소를<br/>확인할 수 있습니다.
				</p>
                <p class="favorite_off HIDDEN">
                    별을 끄면 지도위에서<br/>즐겨찾기한 장소가<br/>사라집니다.
				</p>
            </div>
		</div>
		
	</div>

	<div id="info.body" class="body">
		        
<div id="info.main" class="Main INFOLEFT">
	 <div id="info.main.home" class="home">
		<div id="info.main.famous" class="famous"></div>
		<div id="info.main.favorite" class="regfav"></div>
	    	    
	    <div id="info.main.notice" class="notice">
	        <h6><a href="http://kakaomap.tistory.com" target="_blank">공지사항</a></h6>
	        <ul>
	        		        		<li id="info.main.notice.text1">
						<a href="http://kakaomap.tistory.com/107" target="_blank">[공지] 카카오맵/다음지도 5월 정기업데이트</a>
					</li>
					        		<li id="info.main.notice.text2">
						<a href="http://kakaomap.tistory.com/92" target="_blank">[안내] 다음지도 장소상세 페이지가 새로워졌어요!</a>
					</li>
					        		<li id="info.main.notice.text3">
						<a href="http://kakaomap.tistory.com/86" target="_blank">[안내] 다음지도에서 카카오맵 즐겨찾기 연결하기</a>
					</li>
					        </ul>
	        <a id="info.main.notice.more" class="more" href="http://kakaomap.tistory.com" target="_blank">더보기</a>
	    </div>
	    <div id="info.main.ads" class="localads">
	    		    	<div id="info.main.adButtons" class="localadSelect HIDDEN">
	    		    		</div>
	    </div>
    </div>
    
	<div id="info.main.header" class="mainHeader HIDDEN">
		<ul id="info.main.options" class="sub DOTUM11"></ul>
		<a href="#" id="info.main.header.clear" class="clear">모두지우기</a>
		<div id="info.main.header.activeOption" class="screen_out"></div>
	</div>
    
    <div id="info.main.banner" class="keywordBanner HIDDEN">
    	<a href="#" class="banner"></a>
    </div>
    
        <div id="info.related.keyword" class="relatedKeyword HIDDEN">
    	<span class="ico">관련검색어</span>
    	<div class="frameKeywords">
    	<p class="wrapKeywords">
    	</p>
    	</div>
    	<div class="more closed HIDDEN">
    		<a href="#">더보기</a><span class="ico"></span>
    	</div>
    	<div class="more opened HIDDEN">
    		<a href="#">접기</a><span class="ico"></span>
   		</div>
    </div>
	<div id="info.busTab" class="sub busTab HIDDEN">
		<ul id="info.busTab.list" class="subject DOTUM11">
			<li id="info.busTab.list.n1" class="INACTIVE"><a href="#">버스번호</a></li>
			<li id="info.busTab.list.n2" class="INACTIVE"><a href="#">버스정류장</a></li>
		</ul>
	</div>
        <div id="info.searchHeader" class="searchHeader">
    	<div id="info.search.boundsTitle" class="HIDDEN">
    		<span class="text">현재지도 내 <strong id="info.search.boundsTitle.text" class="bounds"></strong> 검색결과</span>	
    	</div>
    	<div id="info.search.correction" class="correction HIDDEN">
            <p class="correctionTop">
            	'<strong id="info.search.correction.orig"></strong>'에서
				'<strong id="info.search.correction.new"></strong>'으로 검색한 결과
			</p>
			<p class="correctionBottom">
				<a href="#" id="info.search.correction.goorig">입력한 '<span id="info.search.correction.orig2"></span>'(으)로 재검색 ‣</a>
			</p>
		</div>
		<div id="info.searchHeader.message" class="message HIDDEN"></div>
		<div id="info.searchHeader.postCodeMessage" class="postCodeMessage HIDDEN">
			<a href="#" class="postCodeLink">우편번호 검색</a>
		</div>
		<div id="info.searchHeader.spellcheck" class="spellcheck HIDDEN">
			<div id="info.searchHeader.spellcheck.titleresult" class="spellcheckTitle HIDDEN">
				'<strong id="info.searchHeader.spellcheck.title"></strong>' 검색결과
			</div>
			<p><a href="#" class="candidate" id="info.searchHeader.spellcheck.candidate">'<span id="info.searchHeader.spellcheck.text"></span>'(으)로 검색하시겠습니까?</a></p>
		</div>
	</div>	
	<div id="info.noPlace" class="noPlace HIDDEN">
		<h5 class="noKeyword">'<em id="info.noPlace.keyword"></em>'에 대한 <span id="info.noPlace.keyword.option"></span>검색 결과가 없습니다.</h5>
		<a href="#" class="noKeywordLink" id="info.noPlace.daum.link" target="_blank">Daum 통합검색 결과 보기</a>
		<ul class="noResultDesc">
   			<li>검색어의 철자가 정확한지 다시 한 번 확인해주세요.</li>
   			<li>장소를 찾을때 <strong>전화번호,주소</strong>도 활용해 보세요.</li>
   		</ul>
        <div id="info.noPlace.register" class="register">
            알고있는 장소가 검색결과에 없다면 장소를 직접 등록해주세요.
            <a id="info.noPlace.register.btn" class="registerBtn" href="#" target="_blank">신규장소 등록</a>
        </div>
	</div>
        <div id="info.search" class="keywordSearch HIDDEN">
		
		
												
				<div id="info.search.theme" class="section themeSearch HIDDEN">
			<div class="sectiontitle">
				<h5 class="themetit">테마</h5>
				<span class="cntwrap">(<em class="cnt" id="info.search.theme.cnt">5</em>건)</span>
			</div>
			<ul id="info.search.themeList" class="themeList">
			</ul>
		</div>
		
		<div id="info.search.buses" class="section buses">
			<div class="sectiontitle sectionBus">
				<h5 class="busestit">버스번호</h5>
				<span class="cntwrap">(<em id="info.search.buses.cnt" class="cnt"></em>건)</span>
				<span id="info.search.buses.busstop" class="busstop HIDDEN">
					버스 정류장(<em id="info.search.buses.busstop.cnt" class="cnt"></em>건)
				</span>
				<div id="info.search.buses.regions" class="regionsbox"></div>
			</div>
			<ul id="info.search.buses.list"></ul>
			<a id="info.search.buses.more" class="more" href="#">버스 더보기</a>
					</div>
		
		<div id="info.search.busstops" class="section busstops">
			<div class="sectiontitle sectionBus">
				<h5 class="busstoptitle">버스 정류장</h5>
				<span class="cntwrap">(<em id="info.search.busstops.cnt" class="cnt"></em>건)</span>
				<div id="info.search.busstops.regions" class="regionsbox"></div>
			</div>
			<ul id="info.search.busstops.list"></ul>
			<a id="info.search.busstops.more" class="more" href="#">버스 정류장 더보기</a>
					</div>
		
		<div id="info.search.address" class="section addresses">
			<div class="sectiontitle">
				<h5 class="addrtit">주소</h5>
				<span class="cntwrap">(<em id="info.search.address.cnt" class="cnt"></em>건)</span>
			</div>
			<div id="info.search.address.retry" class="retry HIDDEN">
				<div class="content">
					<span class="ico"></span>
					<span class="txt">찾으시는 주소가 없어 유사한 주소를 제공합니다.</span>
				</div>
			</div>
			<ul id="info.search.address.list"></ul>
			<a id="info.search.address.more" class="more" href="#">주소 더보기</a>
		</div>
		
		<div id="info.search.place" class="section places">
			<div class="sectiontitle">
				<h5 class="placetit">장소</h5>
				<span class="cntwrap">(<em id="info.search.place.cnt" class="cnt"></em>건)</span>
				<ol id="info.search.place.sort" class="Sort"></ol>
			</div>
			<div id="info.search.place.breadcrumb" class="breadcrumb"></div>
			<ul id="info.search.place.list" class="placelist"></ul>
			<a id="info.search.place.more" class="more" href="#">장소 더보기</a>
					</div>
		<!-- div id="info.search.review" class="section reviews HIDDEN">
			<div class="sectiontitle">
				<ol id="info.search.review.sort" class="Sort"></ol>			
				<h5 class="reviewtit">리뷰</h5>
				<span class="cntwrap">(<em id="info.search.review.cnt" class="cnt"></em>건)</span>
			</div>
			<p id="info.search.review.category" class="categories">
				<a id="info.search.review.category.n1" class="ACTIVE" href="#">전체</a>
				<a id="info.search.review.category.n2" class="INACTIVE" href="#">음식</a>
				<a id="info.search.review.category.n3" class="INACTIVE" href="#">여행</a>
				<a id="info.search.review.category.n4" class="INACTIVE" href="#">기타</a>
			</p>
			<ul id="info.search.review.list"></ul>
			<a id="info.search.review.more" class="more" href="#">리뷰 더보기</a>
					</div -->
		
		<div id="info.search.page" class="pages HIDDEN">
			<div class="pageWrap">
	    		<a id="info.search.page.prev" class="prev screen_visible" href="#">&nbsp;이전</a>
	    		<a id="info.search.page.no1" class="INACTIVE" href="#">1</a>
	    		<a id="info.search.page.no2" class="INACTIVE" href="#">2</a>
	    		<a id="info.search.page.no3" class="INACTIVE" href="#">3</a>
	    		<a id="info.search.page.no4" class="INACTIVE" href="#">4</a>
	    		<a id="info.search.page.no5" class="INACTIVE" href="#">5</a>
	    		<a id="info.search.page.next" class="next" href="#">&nbsp;다음</a>
    		</div>
		</div>
		
	</div>

    <div id="info.addNewPlace" class="info_addplace HIDDEN">
        <strong class="tit_addplace">원하는 장소가 검색결과에 없나요?</strong>
        <a id="info.addNewPlace.btn" href="#" class="ico_place link_addplace">신규장소등록</a>
    </div>

    <div id="info.noSuchPlace" class="noPlace noSuchPlace HIDDEN">
		<p><strong>'해당위치'</strong>에 대한 검색 결과가 없습니다.</p>
	</div>
	
	<div id="info.noPlaceInBounds" class="noPlace noInBounds HIDDEN">
		<h5>'<em id="info.noPlaceInBounds.keyword"></em>'에 대한 검색 결과가 없습니다.</h5>
		<p class="todo">검색어가 정확한지 다시 한번 확인해 주세요.<br />
			검색창 옆의 <strong>"화면 내 장소 검색"</strong> 체크여부를 확인해 주세요.</p>
        <div id="info.noPlaceInBounds.register" class="register">
            알고있는 장소가 검색결과에 없다면 장소를 직접 등록해주세요.
            <a id="info.noPlace.register.btn" class="registerBtn" href="#" target="_blank">신규장소 등록</a>
        </div>
	</div>
	
	<div id="info.noThemePlace" class="noThemePlace HIDDEN">
		<p id="info.noThemePlace.category" class="reviewcategories HIDDEN">
			<a id="info.noThemePlace.category.n1" href="#">전체</a>
			<a id="info.noThemePlace.category.n2" href="#">음식</a>
			<a id="info.noThemePlace.category.n3" href="#">여행</a>
			<a id="info.noThemePlace.category.n4" href="#">기타</a>
		</p>
		<p class="l1"><strong>'주변 <span id="info.noThemePlace.title"></span>'</strong>에 대한 검색 결과가 없습니다.</p>
		<p class="l2">지도를 축소하여 다시 테마 지도를 이용해 주세요.</p>
	</div>
	
	
	
</div>
		<div id="info.route" class="RouteSearch HIDDEN">
	
	<div id="info.route.searchBox" class="RouteSearchBox HIDDEN WHITEOUT">
		<a href="#" class="routechange" id="info.route.searchBox.change"></a>
	</div>
	<div id="info.route.searchBox.options" class="searchBoxOptions">
		<a href="#" class="toggleVia" id="info.route.searchBox.toggleVia"></a>
		<a href="#" class="clearVia" id="info.route.searchBox.clearVia"></a>
		<blockquote id="search.reverseHint" class="HIDDEN reverseHint"></blockquote>
	</div>
	<div id="info.flagsearch.method" class="routeMethod"></div>
	
	
	<div id="info.route.home" class="routeHistory routedesc"></div>
	
	<div id="info.flagsearch" class="HIDDEN Flagsearch">
		<div class="search">
			<div id="info.flagsearch.divided" class="flagDivided">
				<div id="info.flagsearch.correction" class="correction HIDDEN">
		            <p class="correctionTop">
		            	'<strong id="info.flagsearch.correction.orig"></strong>'에서
						'<strong id="info.flagsearch.correction.new"></strong>'으로 검색한 결과
					</p>
					<p class="correctionBottom">
					<a href="#" id="info.flagsearch.correction.goorig">입력한 '<span id="info.flagsearch.correction.orig2"></span>'(으)로 재검색 ‣</a>
					</p>
				</div>
			
	       		<div id="info.flagsearch.spellcheck" class="spellcheck HIDDEN">
	       			<div class="spellcheckTitle HIDDEN" id="info.flagsearch.spellcheck.titleText">
						'<strong id="info.flagsearch.spellcheck.title"></strong>' 검색결과
					</div>
	       			<p><a href="#" class="candidate" id="info.flagsearch.spellcheck.candidate">'<span id="info.flagsearch.spellcheck.text"></span>'(으)로 검색하시겠습니까?</a></p>
	       		</div>
	       		
	       		<div id="info.flagsearch.message" class="message"></div>
	       		
	   		</div>
			<div id="info.flagsearch.options" class="filterwrap">
	   			<div class="filter" data-mypage="true">
	   				<a href="#" class="ACTIVE" id="info.flagsearch.filter.all">전체</a>
                    <a href="#" class="INACTIVE" id="info.flagsearch.filter.place">장소</a>
                    <a href="#" class="INACTIVE" id="info.flagsearch.filter.address">주소</a>
	   				<a href="#" class="INACTIVE" id="info.flagsearch.filter.busstop">버스</a>
	   			</div>
			</div>
	   		<div id="info.flagsearch.address" class="section addresses">
	   			<h5 class="sectiontitle">
	   				<span class="addrtitle">주소</span>
	   				<span class="cntwrap">(<em id="info.flagsearch.address.cnt" class="cnt"></em>건)</span>
	   			</h5>
	   			<ul id="info.flagsearch.address.list"></ul>
	   			<a id="info.flagsearch.address.more" class="more" href="#">주소 더보기</a>
	   		</div>
	   		
	   		<div id="info.flagsearch.place" class="section places">
	   			<h5 class="sectiontitle">
	   				<span class="placetitle">장소</span>
	   				
	   				<span class="cntwrap">(<em id="info.flagsearch.place.cnt" class="cnt"></em>건)</span>
	   			</h5>
	   			<ul id="info.flagsearch.place.list"></ul>
	   			<a id="info.flagsearch.place.more" class="more" href="#">장소 더보기</a>
	   		</div>
	   		
	   		<div id="info.flagsearch.busstop" class="section busstopList HIDDEN">
	   			<h5 class="sectiontitle">
	   				<span class="busstoptitle">버스정류장</span>
	   				<span class="cntwrap">(<em id="info.flagsearch.busstop.cnt" class="cnt"></em>건)</span>
	   			</h5>
	   			<ul id="info.flagsearch.busstop.list" ></ul>
	   			<a id="info.flagsearch.busstop.more" class="more" href="#">버스정류장 더보기</a>
	   		</div>
	   		
	   		<div id="info.flagsearch.page" class="pages HIDDEN">
	   			<div class="pageWrap">
		   			<a id="info.flagsearch.page.prev" class="prev" href="#">&nbsp;</a>
		       		<a id="info.flagsearch.page.no1" class="INACTIVE" href="#">1</a>
		       		<a id="info.flagsearch.page.no2" class="INACTIVE" href="#">2</a>
		       		<a id="info.flagsearch.page.no3" class="INACTIVE" href="#">3</a>
		       		<a id="info.flagsearch.page.no4" class="INACTIVE" href="#">4</a>
		       		<a id="info.flagsearch.page.no5" class="INACTIVE" href="#">5</a>
		       		<a id="info.flagsearch.page.next" class="next" href="#">&nbsp;</a>
		       	</div>
	   		</div>
			
			<div id="info.noFlagPlace" class="noPlace HIDDEN">
	       		
	       		<h5 class="noKeyword">'<em id="info.noFlagPlace.keyword"></em>'에 대한 <strong id="info.noFlagPlace.optionKeyword">검색 결과</strong>가 없습니다.</h5>
	       		<ul class="noResultDesc">
	       			<li>검색어의 철자가 정확한지 다시 한 번 확인해주세요.</li>
	       			<li>장소를 찾을때 <strong>전화번호,주소</strong>도 활용해 보세요.</li>
	       		</ul>
                <div id="info.noFlagPlace.register" class="register">
                    알고있는 장소가 검색결과에 없다면 장소를 직접 등록해주세요.
                    <a id="info.noFlagPlace.register.btn" class="registerBtn" href="#" target="_blank">신규장소 등록</a>
                </div>
			</div>

            <div id="info.flagsearch.addNewPlace" class="info_addplace HIDDEN">
                <strong class="tit_addplace">원하는 장소가 검색결과에 없나요?</strong>
                <a id="info.flagsearch.addNewPlace.btn" href="#" class="ico_place link_addplace">신규장소등록</a>
            </div>
		</div>
		
		<div id="info.carRoute" class="HIDDEN"></div>
		<div id="info.walkRoute" class="walkroute HIDDEN"></div>
	</div>
</div>

		
<div id="info.bus" class="BusSearch WHITEOUT HIDDEN">
	<a id="info.bus.removeAll" class="removeAll">모두지우기</a>
	<ul id="search.busMethodtype" class="BusMethodType">
		<li id="search.busMethodtype.number" class="busNum NUMBER-ACTIVE">버스번호</li>
		<li id="search.busMethodtype.stop" class="busStop BUSSTOP-INACTIVE">버스정류장</li>
		<li id="search.busMethodtype.region" class="busRegion REGION-INACTIVE">지역별</li>
	</ul>
	
	<ul id="search.busLocal" class="BusLocal HIDDEN">
	</ul>	
	
	<ul id="search.busSubLocal" class="BusSubLocal HIDDEN">
		<li id="search.busSubLocal.all">전지역</li>
	</ul>
	
			<div id="info.bus.searchBox.number" class="number">
			<form id="info.bus.searchBoxNumber" class="BusSearchBox WHITEOUT">
				<input id="info.route.searchBox.number.name" class="q" type="text" autocomplete="off"/>
				<button id="info.bus.searchBox.number.submit" class="go" type="submit"></button>
				<a id="info.route.searchBox.number.delete" class="delete HIDDEN"></a>
				<blockquote id="info.route.searchBox.number.nameSuggest"></blockquote>
			</form>
		</div> 
		<div id="info.bus.searchBox.stop" class="stop HIDDEN">
			<form id="info.bus.searchBoxStop" class="BusSearchBox WHITEOUT">
				<input id="info.route.searchBox.stop.name" class="q" type="text" autocomplete="off" />
				<button id="info.bus.searchBox.stop.submit" class="go" type="submit"></button>
				<a id="info.route.searchBox.stop.delete" class="delete HIDDEN"></a>
				<blockquote id="info.route.searchBox.stop.nameSuggest"></blockquote>
			</form>
		</div>
		
		<div id="info.bus.region" class="region BusSearchBox HIDDEN">
			<span class="hb">
				<span id="info.bus.region.local.button" class="rb"> 
					<span class="lb">
						<span id="info.bus.region.local" class="method">지역을 선택하세요</span>
					</span>
				</span>
			</span>
			
			<span class="hb sub">
				<span id="info.bus.region.subLocal.button" class="rb"> 
					<span class="lb">
						<span id="info.bus.region.subLocal" class="method method-INACTIVE HIDDEN">시/군을 선택하세요</span>
					</span>
				</span>
			</span>
		</div>			
	
		<div id="info.busIntro" class="Howto">
		<p class="bus"></p>
	</div>
	
	<div id="info.bus.search" class="BusResult">
		<div id="info.bus.message" class="busMessage">
			<div id="info.bus.guide" class="guide"></div>
			<div id="info.bus.filter" class="filter"></div>
		</div>
	    <ul id="info.bus.list" class="list"></ul>
	    <div id="info.bus.page" class="pages HIDDEN">
	    	<div class="pageWrap">
		        <a id="info.bus.page.prev" class="prev" href="#">&nbsp;</a>
		        <a id="info.bus.page.no1" class="INACTIVE" href="#">1</a>
		        <a id="info.bus.page.no2" class="INACTIVE" href="#">2</a>
		        <a id="info.bus.page.no3" class="INACTIVE" href="#">3</a>
		        <a id="info.bus.page.no4" class="INACTIVE" href="#">4</a>
		        <a id="info.bus.page.no5" class="INACTIVE" href="#">5</a>
		        <a id="info.bus.page.next" class="next" href="#">&nbsp;</a>
		    </div>
	    </div>
		<div id="info.noBus" class="HIDDEN"></div>	
	</div>
	
</div>

		<div id="info.subway" class="SubwayRouteSearch HIDDEN WHITEOUT">	
		<div class="SubwayRegion WHITEOUT">
		<ul id="info.subway.region">
		</ul>
		<a href="#" id="info.subway.remove" class="remove" title="모두지우기">모두지우기</a>
	</div>
	
	    <div id="info.subway.searchBox" class="SubwayRouteSearchBox HIDDEN WHITEOUT">
    	<div class="origindestBox">
			<div id="info.subway.searchBox.originBox" class="box">
				<form id="info.subway.searchBox.originForm" class="form">
					<input id="info.subway.searchBox.origin" class="q" type="text" value=""/>
					<label for="info.subway.searchBox.origin"><span class="holderText op">출발역</span></label>
					<input class="submit" type="submit" value=""/>
					<a href="#" id="info.subway.searchBox.originDelete" class="delete dl HIDDEN" title="출발역지우기">출발역지우기</a>
				</form>
			<blockquote id="info.subway.searchBox.originSuggest" class="SubwayOriginSuggest"></blockquote>
			</div>
	        <a href="#" class="to" id="info.subway.searchBox.to">출발역과 도착역 바꾸기</a>
			<div id="info.subway.searchBox.destBox" class="box dest">
				<form id="info.subway.searchBox.destForm" class="form">
					<input id="info.subway.searchBox.dest" class="q" type="text" value="" />
					<label for="info.subway.searchBox.dest"><span class="holderText dp">도착역</span></label>
					<input class="submit" type="submit" value=""/>
					<a href="#" id="info.subway.searchBox.destDelete" class="delete dr HIDDEN" title="도착역지우기">도착역지우기</a>
				</form>
			<blockquote id="info.subway.searchBox.destSuggest" class="SubwayDestSuggest"></blockquote>
			</div>
		</div>
		<div class="options">
			<a href="#" id="info.subway.searchBox.dayBox" class="optionBox day" title="요일설정">
				<span class="text">평일</span>
				<span class="arrow"></span>
			</a>
			<a href="#" id="info.subway.searchBox.optionBox" class="optionBox" title="옵션설정">
				<span class="text">출발시간</span>
				<span class="arrow"></span>
			</a>
			<a href="#" id="info.subway.searchBox.hourBox" class="optionBox hour" title="시간설정">
				<span class="text">시</span>
				<span class="arrow"></span>
			</a>
			<a href="#" id="info.subway.searchBox.minuteBox" class="optionBox minute" title="시간설정">
				<span class="text">분</span>
				<span class="arrow"></span>
			</a>
			<ul id="info.subway.searchBox.listBox" class="listBox"></ul>	
		</div>
		<div class="submitBox">
			<a href="#" class="endCheck DOTUM11" title="막차보기"><span class="icon"></span>막차보기</a>
			<a href="#" id="info.subway.searchBox.submit" class="go" title="검색">검색</a>	
		</div>
	</div>
	    <div id="info.subway.intro" class="Howto">
	    <p class="intro subway"></p>
    </div>
        <div id="info.subwayInfo" class="subwayInfo HIDDEN">
    	<div class="SubwayRouteResultView">
    		<p class="firstTrainInfo HIDDEN"><span class="infoImg"><a href="#" class="infoClose">닫기</a></span></p>
    		<ul class="list"></ul>
    		<span class="bottomLine"></span>
    	</div>
	</div>
</div>
		<div id="info.favorite" class="FavoriteListView HIDDEN">
    <div class="map_login">
        <h5 class="screen_out">다음 지도 로그인</h5>
        <span class="bg_maplogin"></span>
        <strong class="tit_maplogin">자주 가는 장소는 등록해서 사용해요.</strong>
        <p class="txt_maplogin">집이나 회사 등 자주 가는 장소는 즐겨찾기로 등록하여 언제 어디서나 쉽고 빠르게 검색할 수 있습니다.</p>
        <a href="#" class="link_maplogin">로그인</a>
    </div>

    <div class="favorite_interlock HIDDEN">
        <h5 class="screen_out">즐겨찾기 리스트</h5>
        <div data-id="connectInfo" class="interlock_report">
            <strong class="screen_out">카카오 맵 연결 여부 확인</strong>
            <p class="txt_linkage">카카오맵에 연결되지 않았습니다.</p>
            <a data-id="btnConnect" href="#" class="btn_interlock link_linkage">연결하기</a>
        </div>
        <strong class="screen_out">즐겨찾기 추가된 집 주소와 회사 주소 리스트</strong>
        <ul data-id="staticList" class="list_registerated"></ul>

        <strong class="screen_out">즐겨찿기 루트별 탭 메뉴</strong>
        <ul data-id="filter" class="tab_registerated">
            <li class="on"><a href="#" class="link_tab link_total">전체</a></li>
            <li><a href="#" class="link_tab link_location">주소/장소</a></li>
            <li><a href="#" class="link_tab link_road">길찾기</a></li>
            <li><a href="#" class="link_tab link_bus">버스</a></li>
            <li><a href="#" class="link_tab link_roadview">로드뷰</a></li>
        </ul>

        <div data-id="listNone" class="favorite_information HIDDEN">
            <span class="ico_pin ico_information"></span>
            <strong class="tit_information"><span class="txt_emph">즐겨찾기</span> 목록이 없습니다.</strong>
            <p class="txt_information">
                자주 이용하는 장소, 경로, 교통정보를<br>저장하고 편하게 이용하세요.
            </p>
        </div>

        <div data-id="listWrap" class="favorite_result">
            <div data-id="listInfo" class="info_result">
                <strong class="tit_result">
                    <span class="screen_out" data-id="listTitleName">전체 결과</span>
                    <em id="favorite.list.total" class="emph_result">0</em>건
                </strong>
            <span class="wrap_result">
                <a data-id="recent" href="#" class="link_result on">최신순</a>
                <span class="txt_vertical">|</span>
                <a data-id="name" href="#" class="link_result">가나다</a>
            </span>
            </div>
            <ul data-id="list" class="list_registerated"></ul>
        </div>
    </div>
</div>		
		<div id="info.issue" class="section" style="display:none">
			<div id="info.issue.place">
				<h5>폭우 피해지도 <span id="info.issue.place.issueCnt"></span>건</h5>
				<ul id="info.issue.place.list"></ul>
				<a id="info.issue.place.more" class="more" href="#">장소 더보기(<strong id="info.issue.place.more.count">0</strong>)</a>
			</div>
		</div>
		
		<div id="info.thememap" class="thememap section HIDDEN">
			<div id="info.thememap.theme" class="themeMapView">
				<div class="sectiontitle">
					<h5 class="themetit">테마</h5>
					<span class="cntwrap">(<em id="info.thememap.theme.cnt" class="cnt">0</em>건)</span>
					<ol id="info.thememap.theme.sort" class="Sort">
						<li class="first"><a href="#" class="recent ACTIVE">최신순</a></li>
						<li><a href="#" class="rank INACTIVE">인기순</a></li>
					</ol>
				</div>
				<ul id="info.thememap.theme.recommend" class="themeRecommend"></ul>
				<ul id="info.thememap.theme.list" class="themeList"></ul>
			</div>
			<div id="info.thememap.placeview" class="themeMapPlaceView HIDDEN">
				<div class="title">
					<a href="#" class="share">공유하기</a>
					<span></span>
				</div>
				<div class="sectiontitle">
					<h5 class="placetit">장소</h5>
					<span class="cntwrap">(<em id="info.thememap.place.cnt" class="cnt">0</em>건)</span>
					<a href="#" class="themeMore">전체 테마 보기</a>
				</div>
				<ul id="info.thememap.place.list" class="themePlaceList"></ul>
				<div class="sectiontitle bottomtitle">
					<h5 class="themeplacetit">추천 테마지도</h5>
					<span class="cntwrap">(<em id="info.thememap.placetheme.cnt" class="cnt">0</em>건)</span>
					<a href="#" class="themeMore">전체 테마 보기</a>
				</div>
				<ul id="info.thememap.recommend.list" class="themeRecommendList"></ul>
			</div> 
		</div>
	</div>	
	<div id="info.footer" class="footer"></div>	
	<div id="footer" class="Footer">
    <a id="footer.xb" target="_blank" href="http://apis.map.daum.net">오픈API</a><span> | </span>    
    <a id="footer.xc" target="_blank" href="https://register.search.daum.net/index.daum">검색등록</a><span> | </span>
    <a id="footer.xd" target="_blank" href="http://local.biz.daum.net/rainbow_core/ols/index.local">광고신청</a><span> | </span>
    <a id="footer.xf" target="_blank" href="http://cs.daum.net/faq/48.html">고객센터</a><span> | </span>
    <a id="footer.xg" target="_blank" href="etc/legal.jsp">법적공지</a>
    </div>
</div>

<script type="text/javascript">try {
document.getElementById('info.body').style.height =
	document.documentElement.clientHeight - 121 + 'px';
} catch(e) {}
</script>

<div id="shadow" class="Shadow">
	<div class="bar"></div>
	<span id="shadow.toggle" class="toggle"></span>		
</div>

<div id="localInfo" class="LocalInfo">
	
	<div id="localInfo.map" class="localinfomap DOTUM11">
        <span class="accessLocation">접속지역</span>
		<div class="province">
			<a id="localInfo.map.province" href="#" class="selectBox"></a>
		</div>
		<div class="county">
			<a id="localInfo.map.county" href="#" class="selectBox"></a>
		</div>
		<div class="town">
			<a id="localInfo.map.town" href="#" class="selectBox"></a>
		</div>
		<span id="localInfo.map.weather" class="tempInfo">
			<div class="center">
				<img id="localInfo.map.weatherIcon" class="weatherImg HIDDEN" alt="" src="http://i1.daumcdn.net/dmaps/apis/transparent.gif" />
				<div class="temper">
									</div>
			</div>
		</span>
	</div>
	<div class="rightWrap">
		<div id="tool" class="Tool">
	<a id="tool.map.print" class="print" href="#">인쇄</a>
	<a id="tool.map.save" class="save" href="#">저장</a>
	<a id="tool.map.copy" class="copy" href="#">공유</a>
	<a id="tool.map.modify" class="modify" href="#">지도수정</a>
</div>

<form name="subway_scrap_form" method="post" action="./subway/subwayLinemapLink" target="_self">
	<input type="hidden" name="cityCode" value="" />
	<input type="hidden" name="STARTNAME" value="" />
	<input type="hidden" name="ENDNAME" value=""/>
	<input type="hidden" name="STARTID" value=""/>
	<input type="hidden" name="ENDID" value=""/>
</form>

<form name="subway_print_form" method="post" action=".subway/subwayLinemapPrint" target="_self">
	<input type="hidden" name="cityCode" value="" />
	<input type="hidden" name="STARTID" value=""/>
	<input type="hidden" name="ENDID" value="" />
	<input type="hidden" name="jsonData" value="" />
</form>

<form id="scrap_form" name="scrap_form" method="post" action="./etc/scrap.jsp" target="_self">
	<input type="hidden" name="x" value="" />
	<input type="hidden" name="y" value="" />
	<input type="hidden" name="scale" value="" />
	<input type="hidden" name="baseUrl" value="" />		
</form>

<form id="flash_scrap_form" name="flash_scrap_form" method="post" action="./etc/scrap.jsp" target="_self">
	<input type="hidden" name="panoid" value="" />
	<input type="hidden" name="pan" value="" />
	<input type="hidden" name="tilt" value="" />
	<input type="hidden" name="panoX" value="" />
	<input type="hidden" name="panoY" value="" />
	<input type="hidden" name="caption" value="" />
	<input type="hidden" name="srcid" value="" />
	<input type="hidden" name="query" value="" />
	<input type="hidden" name="storeId" value="" />
</form>
		<div id="mapTypeControlHolder" class="MapTypeControlHolder">
			<div class="mapLayerControl">
				<a href="#" class="weather">날씨보기</a>
				<span class="layerSplitFst">구분</span>
				<a href="#" class="terrain">지형도 보기</a>
				<span class="layerSplitMid">구분</span>
				<a href="#" class="usedistrict">지적경계 보기</a>
				<span class="layerSplit">구분</span>
				<a href="#" class="bike">자전거 보기</a>
			</div>
		</div>
    </div>
    	<div id="localInfo.subway.searchBox" class="localinfosubway HIDDEN">
		<ul id="localInfo.subway.searchBox.region" class="subwayRegion"></ul>
		<a href="#" class="subwayExpress">급행노선</a>
    </div>
	
</div>
<div id="localInfoList" class="LocalInfoList DOTUM">
	<div id="localInfoList.province" class="box HIDDEN">
		<ul id="localInfoList.province.list" class="province"></ul>
	</div>
	<div id="localInfoList.county" class="box HIDDEN">
		<ul id="localInfoList.county.list" class="county"></ul>
	</div>
	<div id="localInfoList.town" class="box HIDDEN">
		<ul id="localInfoList.town.list" class="town"></ul>
	</div>	
</div>

<div id="toolList" class="ToolList">
	<div id="toolList.copylist" class="copylist DOTUM11 HIDDEN">
		    <a id="tool.map.email" class="email_text" href="#">
				<span class="subway">노선</span> 메일</a>
	    	<a id="tool.map.copyurl" class="copyUrl" href="#">
				<span class="subway">노선</span> URL복사</a>
	    	<a id="tool.map.copymap" class="copyMap" href="#">
				<span class="subway">노선도</span><span class="map">지도 </span> 퍼가기</a>
	</div>	    	
</div>

<div id="view" class="View">
    <a class="screen_hide" href="#info.main">이번 영역은 지도부분입니다. 스크린 리더 사용자분께서는 현재 링크를 눌러주시면 본문 영역으로 넘어가실 수 있습니다</a>
    <div id="view.map" class="map map-skyview">
		<div id="miniMapTypeControl" class="MiniMapTypeControl">
			<a id="miniMapTypeControl.roadmap" href="#" title="지도" class="roadmap"></a>
			<a id="miniMapTypeControl.skyview" href="#" title="스카이뷰" class="skyview"></a>
		</div>
		<div id="miniZoomControl" class="MiniZoomControl">
			<a id="miniZoomControl.zoomin" class="zoomin" href="#" title="확대"></a>
			<a id="miniZoomControl.zoomout" class="zoomout" href="#" title="축소"></a>
			<a id="miniZoomControl.reset" class="reset" href="#" title="초기화"></a>
		</div>
    </div>
    
    <div id="view.roadview" class="roadview"></div>
    <div id="view.subway" class="subway">
        <div id="subwayLegend" class="SubwayLegend">
            <div id="subwayLegend.zoom">
                <a href="#" id="subwayLegend.zoom.in" class="zoomin">노선도확대</a>
                <a href="#" id="subwayLegend.zoom.out" class="zoomout">노선도축소</a>
            </div>
        </div>
        <div id="view.subway.flash" class="subwayFlash">
            <div id="view.subway.flash.object"></div>
        </div>
    </div>
    <div id="view.deco" class="FrameDecorator HIDDEN">
        <div id="view.deco.frame" class="frame HIDDEN">
            <div id="view.deco.horizontal" class="horizontal"></div>
            <div id="view.deco.vertical" class="vertical"></div>
            <div id="view.deco.drag" class="drag"></div>
			<div id="view.deco.fragment" class="fragment"></div>
        </div>
        <div id="view.deco.toggle" class="toggle"></div>
    </div>
    
    <div id="subwayoverviewer" class="Subwayoverviewer HIDDEN">
        <img id="subwayoverviewer.image" class="SubwayoverviewerImage" alt=""
                 src="http://i1.daumcdn.net/dmaps/defaultimg/transparent.gif" >
        <div id="subwayoverviewer.walker" class="SubwayoverviewerWalker">
            <div></div>
            <span></span>
        </div>
    </div>
    
    <img id="failflash" alt="일시적 장애로 인해 로드뷰를 확인할 수 없습니다." class="failflash HIDDEN" usemap="#failFlashMap" src="http://i1.daumcdn.net/dmaps/apis/transparent.gif" />
    
    <map name="failFlashMap">
        <area id="failFlashMap.close" alt="닫기" shape="rect" coords="270, 5, 292, 20" href="#" >
        <area id="failFlashMap.mapview" alt="지도보기" shape="rect" coords="108, 130, 190, 158" href="#" >
    </map>
</div>

<ul id="regionList" class="RegionList"></ul>

<div id="shareUrl" class="ShareUrl HIDDEN">
	<a id="shareUrl.closer" href="#" class="closer"></a>
	<h4>URL복사</h4>
		<ul id="shareUrl.type" class="type">
			<li id="shareUrl.type.longUrl"><span class="radio"></span><span class="label">일반 URL</span></li>
			<li id="shareUrl.type.shortUrl" class="shortUrl"><span class="radio"></span><span class="label">짧은 URL</span><span id="shareUrl.type.shortUrl.help" class="help">도움말</span></li>
		</ul>
		<div id="shareUrl.url" class="url">
			<input id="shareUrl.url.text" readonly class="input"/>
			<div id="shareUrl.url.copy" class="copyContainer">
				<div id="shareUrl.url.copy.node" class="copy"></div>
			</div>
		</div>
		<div id="shareUrl.help" class="helpBox HIDDEN">현재 지도를 다른 사람과 쉽게 공유할 수 있도록 짧은 URL로 만들 수 있습니다.</div>
</div>

<div id="flashPlayerDownload" class="FlashPlayerDownload HIDDEN">
	<p class="HIDDEN">Daum로드뷰 서비스를 이용하시려면, Adobe Flash Player10 이상이 설치되어 있어야 합니다.</p>
	<span id="flashPlayerDownload.close" class="close">닫기</span>
	<span id="flashPlayerDownload.download" class="download">최신버전 다운로드</span>
</div>

<div id="dimmedLayer" class="DimmedLayer HIDDEN"></div>

<div id="homeRegInfo" class="HomeRegInfo HIDDEN"></div>

<div id="validPlaceInfo" class="ValidPlaceInfo HIDDEN">
	<a id="ValidPlaceInfo.closeNDelete" class="closeNDelete"></a>
</div>

<div class="moreGroupview HIDDEN" id="moreGroupview">자세히 보기</div>

<div id="roadviewInfoBoxQuickhelp" class="RoadviewInfoBox-quickhelp HIDDEN"></div>

<div id="titleSystemTooltip" class="titleSystemTooltip HIDDEN"></div>

<script type="text/javascript">
var minidaum_options = {
    disableHotissue: true,
    disableLogo: true,
    disableTracker: true,
    enableLogoutRetun : true
}
</script>
<script src="http://go.daum.net/jsa_minidaum_pc.daum" charset="utf-8" type="text/javascript"></script>

<script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U0301/cssjs/JSON-js/fc535e9cc8/json2.min.js"></script>
<script charset='utf-8' type='text/javascript' src='http://m1.daumcdn.net/tiara/js/td.min.js'></script>

<script type="text/javascript" src="http://s1.daumcdn.net/dmaps/local/require-2.1.0.js"></script>
<script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U0301/cssjs/jquery/plugin/jquery.cookie-1.0.0.min.js"></script>
<script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U0301/cssjs/swfobject/swfobject-2.2.min.js"></script>
<script type="text/javascript" src="http://dmaps.daum.net/map_js_init/v3.js"></script>
<script type="text/javascript" src="http://s1.daumcdn.net/dmaps/mapapiv3/congnamul.js"></script>
<script type="text/javascript" src="./iptargeting/location"></script>




<script type="text/javascript" src="http://dmaps.daum.net/map_js_init/localAd/Ad_v2.js"></script> 

<script type="text/javascript" src="http://s1.daumcdn.net/svc/attach/U0301/cssjs/map/1706191819/app.js"></script>

<script type="text/javascript">
		

jQuery.noConflict();
require.config({baseUrl:'js/app',deps:['main'],config:{main:{
params:{}||{},
options:{
	login:1,
	notices:[ ],
	hcodeList:[{id:"11",name:"서울"},{id:"21",name:"부산"},{id:"22",name:"대구"},{id:"31",name:"경기"},{id:"24",name:"광주"},{id:"25",name:"대전"},{id:"26",name:"울산"},{id:"23",name:"인천"},{id:"29",name:"세종특별자치시"},{id:"32",name:"강원"},{id:"33",name:"충북"},{id:"34",name:"충남"},{id:"35",name:"전북"},{id:"36",name:"전남"},{id:"37",name:"경북"},{id:"38",name:"경남"},{id:"39",name:"제주특별자치도"},{id:"11230",name:"강남구"},{id:"11250",name:"강동구"},{id:"11090",name:"강북구"},{id:"11160",name:"강서구"},{id:"11210",name:"관악구"},{id:"11050",name:"광진구"},{id:"11170",name:"구로구"},{id:"11180",name:"금천구"},{id:"11110",name:"노원구"},{id:"11100",name:"도봉구"},{id:"11060",name:"동대문구"},{id:"11200",name:"동작구"},{id:"11140",name:"마포구"},{id:"11130",name:"서대문구"},{id:"11220",name:"서초구"},{id:"11040",name:"성동구"},{id:"11080",name:"성북구"},{id:"11240",name:"송파구"},{id:"11150",name:"양천구"},{id:"11190",name:"영등포구"},{id:"11030",name:"용산구"},{id:"11120",name:"은평구"},{id:"11010",name:"종로구"},{id:"11020",name:"중구"},{id:"11070",name:"중랑구"},{id:"21120",name:"강서구"},{id:"21110",name:"금정구"},{id:"21310",name:"기장군"},{id:"21070",name:"남구"},{id:"21030",name:"동구"},{id:"21060",name:"동래구"},{id:"21050",name:"부산진구"},{id:"21080",name:"북구"},{id:"21150",name:"사상구"},{id:"21100",name:"사하구"},{id:"21020",name:"서구"},{id:"21140",name:"수영구"},{id:"21130",name:"연제구"},{id:"21040",name:"영도구"},{id:"21010",name:"중구"},{id:"21090",name:"해운대구"},{id:"22040",name:"남구"},{id:"22070",name:"달서구"},{id:"22310",name:"달성군"},{id:"22020",name:"동구"},{id:"22050",name:"북구"},{id:"22030",name:"서구"},{id:"22060",name:"수성구"},{id:"22010",name:"중구"},{id:"31370",name:"가평군"},{id:"31100",name:"고양시"},{id:"31101",name:"고양시 덕양구"},{id:"31103",name:"고양시 일산동구"},{id:"31104",name:"고양시 일산서구"},{id:"31110",name:"과천시"},{id:"31060",name:"광명시"},{id:"31250",name:"광주시"},{id:"31120",name:"구리시"},{id:"31160",name:"군포시"},{id:"31230",name:"김포시"},{id:"31130",name:"남양주시"},{id:"31080",name:"동두천시"},{id:"31050",name:"부천시"},{id:"31020",name:"성남시"},{id:"31023",name:"성남시 분당구"},{id:"31021",name:"성남시 수정구"},{id:"31022",name:"성남시 중원구"},{id:"31010",name:"수원시"},{id:"31012",name:"수원시 권선구"},{id:"31014",name:"수원시 영통구"},{id:"31011",name:"수원시 장안구"},{id:"31013",name:"수원시 팔달구"},{id:"31150",name:"시흥시"},{id:"31090",name:"안산시"},{id:"31092",name:"안산시 단원구"},{id:"31091",name:"안산시 상록구"},{id:"31220",name:"안성시"},{id:"31040",name:"안양시"},{id:"31042",name:"안양시 동안구"},{id:"31041",name:"안양시 만안구"},{id:"31260",name:"양주시"},{id:"31380",name:"양평군"},{id:"31280",name:"여주시"},{id:"31350",name:"연천군"},{id:"31140",name:"오산시"},{id:"31190",name:"용인시"},{id:"31192",name:"용인시 기흥구"},{id:"31193",name:"용인시 수지구"},{id:"31191",name:"용인시 처인구"},{id:"31170",name:"의왕시"},{id:"31030",name:"의정부시"},{id:"31210",name:"이천시"},{id:"31200",name:"파주시"},{id:"31070",name:"평택시"},{id:"31270",name:"포천시"},{id:"31180",name:"하남시"},{id:"31240",name:"화성시"},{id:"24050",name:"광산구"},{id:"24030",name:"남구"},{id:"24010",name:"동구"},{id:"24040",name:"북구"},{id:"24020",name:"서구"},{id:"25050",name:"대덕구"},{id:"25010",name:"동구"},{id:"25030",name:"서구"},{id:"25040",name:"유성구"},{id:"25020",name:"중구"},{id:"26020",name:"남구"},{id:"26030",name:"동구"},{id:"26040",name:"북구"},{id:"26310",name:"울주군"},{id:"26010",name:"중구"},{id:"23310",name:"강화군"},{id:"23070",name:"계양구"},{id:"23030",name:"남구"},{id:"23050",name:"남동구"},{id:"23020",name:"동구"},{id:"23060",name:"부평구"},{id:"23080",name:"서구"},{id:"23040",name:"연수구"},{id:"23320",name:"옹진군"},{id:"23010",name:"중구"},{id:"29010",name:""},{id:"32030",name:"강릉시"},{id:"32400",name:"고성군"},{id:"32040",name:"동해시"},{id:"32070",name:"삼척시"},{id:"32060",name:"속초시"},{id:"32380",name:"양구군"},{id:"32410",name:"양양군"},{id:"32330",name:"영월군"},{id:"32020",name:"원주시"},{id:"32390",name:"인제군"},{id:"32350",name:"정선군"},{id:"32360",name:"철원군"},{id:"32010",name:"춘천시"},{id:"32050",name:"태백시"},{id:"32340",name:"평창군"},{id:"32310",name:"홍천군"},{id:"32370",name:"화천군"},{id:"32320",name:"횡성군"},{id:"33360",name:"괴산군"},{id:"33380",name:"단양군"},{id:"33320",name:"보은군"},{id:"33340",name:"영동군"},{id:"33330",name:"옥천군"},{id:"33370",name:"음성군"},{id:"33030",name:"제천시"},{id:"33390",name:"증평군"},{id:"33350",name:"진천군"},{id:"33010",name:"청주시"},{id:"33011",name:"청주시 상당구"},{id:"33013",name:"청주시 서원구"},{id:"33014",name:"청주시 청원구"},{id:"33012",name:"청주시 흥덕구"},{id:"33020",name:"충주시"},{id:"34070",name:"계룡시"},{id:"34020",name:"공주시"},{id:"34310",name:"금산군"},{id:"34060",name:"논산시"},{id:"34080",name:"당진시"},{id:"34030",name:"보령시"},{id:"34330",name:"부여군"},{id:"34050",name:"서산시"},{id:"34340",name:"서천군"},{id:"34040",name:"아산시"},{id:"34370",name:"예산군"},{id:"34010",name:"천안시"},{id:"34011",name:"천안시 동남구"},{id:"34012",name:"천안시 서북구"},{id:"34350",name:"청양군"},{id:"34380",name:"태안군"},{id:"34360",name:"홍성군"},{id:"35370",name:"고창군"},{id:"35020",name:"군산시"},{id:"35060",name:"김제시"},{id:"35050",name:"남원시"},{id:"35330",name:"무주군"},{id:"35380",name:"부안군"},{id:"35360",name:"순창군"},{id:"35310",name:"완주군"},{id:"35030",name:"익산시"},{id:"35350",name:"임실군"},{id:"35340",name:"장수군"},{id:"35010",name:"전주시"},{id:"35012",name:"전주시 덕진구"},{id:"35011",name:"전주시 완산구"},{id:"35040",name:"정읍시"},{id:"35320",name:"진안군"},{id:"36390",name:"강진군"},{id:"36350",name:"고흥군"},{id:"36320",name:"곡성군"},{id:"36060",name:"광양시"},{id:"36330",name:"구례군"},{id:"36040",name:"나주시"},{id:"36310",name:"담양군"},{id:"36010",name:"목포시"},{id:"36420",name:"무안군"},{id:"36360",name:"보성군"},{id:"36030",name:"순천시"},{id:"36480",name:"신안군"},{id:"36020",name:"여수시"},{id:"36440",name:"영광군"},{id:"36410",name:"영암군"},{id:"36460",name:"완도군"},{id:"36450",name:"장성군"},{id:"36380",name:"장흥군"},{id:"36470",name:"진도군"},{id:"36430",name:"함평군"},{id:"36400",name:"해남군"},{id:"36370",name:"화순군"},{id:"37100",name:"경산시"},{id:"37020",name:"경주시"},{id:"37370",name:"고령군"},{id:"37050",name:"구미시"},{id:"37310",name:"군위군"},{id:"37030",name:"김천시"},{id:"37090",name:"문경시"},{id:"37410",name:"봉화군"},{id:"37080",name:"상주시"},{id:"37380",name:"성주군"},{id:"37040",name:"안동시"},{id:"37350",name:"영덕군"},{id:"37340",name:"영양군"},{id:"37060",name:"영주시"},{id:"37070",name:"영천시"},{id:"37400",name:"예천군"},{id:"37430",name:"울릉군"},{id:"37420",name:"울진군"},{id:"37320",name:"의성군"},{id:"37360",name:"청도군"},{id:"37330",name:"청송군"},{id:"37010",name:"포항시"},{id:"37011",name:"포항시 남구"},{id:"37012",name:"포항시 북구"},{id:"37390",name:"칠곡군"},{id:"38090",name:"거제시"},{id:"38390",name:"거창군"},{id:"38340",name:"고성군"},{id:"38070",name:"김해시"},{id:"38350",name:"남해군"},{id:"38080",name:"밀양시"},{id:"38060",name:"사천시"},{id:"38370",name:"산청군"},{id:"38100",name:"양산시"},{id:"38310",name:"의령군"},{id:"38030",name:"진주시"},{id:"38330",name:"창녕군"},{id:"38110",name:"창원시"},{id:"38113",name:"창원시 마산합포구"},{id:"38114",name:"창원시 마산회원구"},{id:"38112",name:"창원시 성산구"},{id:"38111",name:"창원시 의창구"},{id:"38115",name:"창원시 진해구"},{id:"38050",name:"통영시"},{id:"38360",name:"하동군"},{id:"38320",name:"함안군"},{id:"38380",name:"함양군"},{id:"38400",name:"합천군"},{id:"39020",name:"서귀포시"},{id:"39010",name:"제주시"}],
	thememapPlaces: [{id: '89', title: '달콤한 밤을 위한 재즈클럽', banner: 'http://t1.daumcdn.net/localimg/localimages/07/2014/theme/141020_pctop.png', thumbnail: 'http://cfile217.uf.daum.net/image/17775E4A4F4CE88F279E7B', placeCount: '14', region: '전국' } , {id: '84', title: '주말에 떠나는 전주 맛집 기행', banner: 'http://t1.daumcdn.net/localimg/localimages/07/2014/theme/140826_69_pc.png', thumbnail: 'http://cfile25.uf.tistory.com/image/0357E64C50F4F90316C073', placeCount: '45', region: '전라' } , {id: '52', title: '분식종결자 떡볶이 지도', banner: 'http://t1.daumcdn.net/localimg/localimages/07/2014/theme/140826_04_pc.png', thumbnail: 'http://cfile27.uf.tistory.com/image/12347B4E4E72D3101AA9A0', placeCount: '67', region: '전국' }   ],
	gasPrice: {avgGasPrice: 1452.7957, avgDieselPrice: 1242.7775, avgLpgPrice: 802.8009,
			gasDate: "2017-06-23", dieselDate: "2017-06-23", lpgDate: "2017-06-23"},
	notice_popup : "N",  	event_notice : "N",  	event_notice2 : "N",  	rojaju_button : "Y",
	
	themeSearch: {
                    '송년회': [39] ,
                    '봄꽃개화지도': [55, 56, 57] ,
                    '단풍놀이': [21] ,
                    '데이트맛집': [54] ,
                    '짜장면': [60] ,
                    '진달래개화지도': [56] ,
                    '생생정보통': [25, 47] ,
                    '송년회장소': [39] ,
                    '등산로맛집': [22] ,
                    '치킨': [40] ,
                    '개화지도': [55, 56, 57] ,
                    '강아지펜션': [3] ,
                    '1인식당': [58] ,
                    '휴일나들이': [12] ,
                    '해돋이': [42] ,
                    '체험학습시설': [4] ,
                    '스키장맛집': [35] ,
                    '무한리필맛집': [61] ,
                    '자전거도로맛집': [66] ,
                    '연중무휴음식점': [48] ,
                    '웨딩촬영지': [64] ,
                    '드라이브코스': [13] ,
                    '캠핑': [9] ,
                    '무한리필': [61] ,
                    '나이트라이프': [20] ,
                    '먹거리X파일': [27, 28] ,
                    '동물병원': [7] ,
                    '오토캠핑장': [9] ,
                    '빵집': [1] ,
                    '생생정보통맛집': [25] ,
                    '단풍': [21] ,
                    '애견펜션': [3] ,
                    '부산명소': [17] ,
                    '착한맛집': [27, 28] ,
                    '연중무휴식당': [48] ,
                    '눈꽃여행': [49] ,
                    '서울지하철쇼핑': [26] ,
                    '식물원': [59] ,
                    '스키장': [38] ,
                    '오토캠핑': [9] ,
                    '체험학습장': [4] ,
                    '현장학습': [4] ,
                    '벚꽃개화지도': [55] ,
                    '치킨맛집': [40] ,
                    '제주맛집': [34] ,
                    '베이커리': [1] ,
                    '해돋이명소': [42] ,
                    '떡볶이': [52] ,
                    '준착한맛집': [28] ,
                    '이영돈착한맛집': [27, 28] ,
                    '달맞이명소': [14] ,
                    '체험학습': [4] ,
                    '개나리개화지도': [57] ,
                    '단풍지도': [21] ,
                    '원산지맛집': [15] ,
                    '캠핑장': [9] ,
                    '야구장맛집': [67] ,
                    '가족나들이': [12] ,
                    '취업사진': [53] ,
                    '온천여행': [51] ,
                    '고양이펜션': [3] ,
                    '산지맛집': [15] 
        	},
    isFavoriteReady : "Y",  }
}}});
</script>




</body>
</html>
