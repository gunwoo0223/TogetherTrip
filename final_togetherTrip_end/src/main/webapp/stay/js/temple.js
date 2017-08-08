$(document)
		.ready(
				function() {
					if (document.title != "") {
						if (document.title != "숙박업소정보 | 어디서 잘까 | 대한민국구석구석") {
							document.title = document.title
									+ " - 숙박업소정보 | 어디서 잘까 | 대한민국구석구석";
						}
					} else {
						document.title = "숙박업소정보 | 어디서 잘까 | 대한민국구석구석";
					}

					(function() {
						var param = ".thumbWrap", btn = ".control", obj = ".item", auto = true, f = 500, s = 3000, p = false, h = true;
						popzone(param, btn, obj, auto, f, s, p, h);
					}());

					function imgChange(roomnum, changeImage) {
						var bigImage = $("#roomImage" + roomnum);
						bigImage.attr("src", "http://tong.visitkorea.or.kr"
								+ changeImage);
					}

					(function() {
						var param = ".rImg", btn = "#control1", obj = ".item1", auto = true, f = 500, s = 3000, p = false, h = true;
						popzone(param, btn, obj, auto, f, s, p, h);
					}());

					function imgChange(roomnum, changeImage) {
						var bigImage = $("#roomImage" + roomnum);
						bigImage.attr("src", "http://tong.visitkorea.or.kr"
								+ changeImage);
					}

					(function() {
						var param = ".rImg", btn = "#control2", obj = ".item2", auto = true, f = 500, s = 3000, p = false, h = true;
						popzone(param, btn, obj, auto, f, s, p, h);
					}());

					function imgChange(roomnum, changeImage) {
						var bigImage = $("#roomImage" + roomnum);
						bigImage.attr("src", "http://tong.visitkorea.or.kr"
								+ changeImage);
					}

					(function() {
						var param = ".rImg", btn = "#control3", obj = ".item3", auto = true, f = 500, s = 3000, p = false, h = true;
						popzone(param, btn, obj, auto, f, s, p, h);
					}());

					function imgChange(roomnum, changeImage) {
						var bigImage = $("#roomImage" + roomnum);
						bigImage.attr("src", "http://tong.visitkorea.or.kr"
								+ changeImage);
					}

					(function() {
						var param = ".rImg", btn = "#control4", obj = ".item4", auto = true, f = 500, s = 3000, p = false, h = true;
						popzone(param, btn, obj, auto, f, s, p, h);
					}());

					function imgChange(roomnum, changeImage) {
						var bigImage = $("#roomImage" + roomnum);
						bigImage.attr("src", "http://tong.visitkorea.or.kr"
								+ changeImage);
					}

					(function() {
						var param = ".rImg", btn = "#control5", obj = ".item5", auto = true, f = 500, s = 3000, p = false, h = true;
						popzone(param, btn, obj, auto, f, s, p, h);
					}());

					function imgChange(roomnum, changeImage) {
						var bigImage = $("#roomImage" + roomnum);
						bigImage.attr("src", "http://tong.visitkorea.or.kr"
								+ changeImage);
					}

					(function() {
						var param = ".rImg", btn = "#control6", obj = ".item6", auto = true, f = 500, s = 3000, p = false, h = true;
						popzone(param, btn, obj, auto, f, s, p, h);
					}());

					function imgChange(roomnum, changeImage) {
						var bigImage = $("#roomImage" + roomnum);
						bigImage.attr("src", "http://tong.visitkorea.or.kr"
								+ changeImage);
					}

					(function() {
						var param = ".rImg", btn = "#control7", obj = ".item7", auto = true, f = 500, s = 3000, p = false, h = true;
						popzone(param, btn, obj, auto, f, s, p, h);
					}());

					function imgChange(roomnum, changeImage) {
						var bigImage = $("#roomImage" + roomnum);
						bigImage.attr("src", "http://tong.visitkorea.or.kr"
								+ changeImage);
					}

					(function() {
						var param = ".rImg", btn = "#control8", obj = ".item8", auto = true, f = 500, s = 3000, p = false, h = true;
						popzone(param, btn, obj, auto, f, s, p, h);
					}());

					var info12 = new Array();
					info12[info12.length] = [ 2463886, 12, 289710, 563385,
							'현대 모터스튜디오 고양', 2 ];

					(function() {
						var btn = $("#con_sect .title strong a");
						function _in(event) {
							var t = $(this);
							var tparent = t.parents(".title");
							var n = tparent.parent().offset().top
									- $(".sub_location").height();
							if (tparent.next().css("display") != "block") {
								tparent.next().stop(true, true).show();
								tparent.parent().addClass("open");
								t.addClass("ov");
								var images = $(".rImg .obj").children();
								$
										.each(
												images,
												function() {
													var t = $(this);
													var defaultHeight = t
															.parent().height();
													if (t.height() > defaultHeight) {
														t
																.css(
																		{
																			"left" : "50%",
																			"height" : "100%"
																		})
																.css(
																		{
																			"margin-left" : (t
																					.width() / 2)
																					* -1
																		});
													} else {
														// t.css({"top":"50%","width":"100%"})
														// .css({"margin-top":(t.height()/2)*-1});
													}
												});
								// $("html,body").stop(true,true).animate({scrollTop:n},300,"easeInOutCubic");
							} else {
								tparent.next().stop(true, true).hide();
								tparent.parent().removeClass("open");
								t.removeClass("ov");
							}
							event.preventDefault();
						}
						btn.on("click", _in);
					}());

					var _GUL = 'vklog.loginside.co.kr';
					var _GPT = '80';
					var _AIMG = new Image();
					var _

					var _AceGID = (function() {
						var Inf = [ 'gtp4.acecounter.com', '8080',
								'AH2A40488765963', 'AW', '0', 'NaPm,Ncisy',
								'ALL', '0' ];
						var _CI = (!_AceGID) ? [] : _AceGID.val;
						var _N = 0;
						var _T = new Image(0, 0);
						if (_CI.join('.').indexOf(Inf[3]) < 0) {
							_T.src = (location.protocol == "https:" ? "https://"
									+ Inf[0]
									: "http://" + Inf[0] + ":" + Inf[1])
									+ '/?cookie';
							_CI.push(Inf);
							_N = _CI.length;
						}
						return {
							o : _N,
							val : _CI
						};
					})();
					var _AceCounter = (function() {
						var G = _AceGID;
						if (G.o != 0) {
							var _A = G.val[G.o - 1];
							var _G = (_A[0]).substr(0, _A[0].indexOf('.'));
							var _C = (_A[7] != '0') ? (_A[2]) : _A[3];
							var _U = (_A[5]).replace(/\,/g, '_');
							var _S = (([ '<scr', 'ipt', 'type="text/javascr',
									'ipt"></scr', 'ipt>' ]).join(''))
									.replace(
											'tt',
											't src="'
													+ location.protocol
													+ '//cr.acecounter.com/Web/AceCounter_'
													+ _C + '.js?gc=' + _A[2]
													+ '&py=' + _A[4] + '&gd='
													+ _G + '&gp=' + _A[1]
													+ '&up=' + _U + '&rd='
													+ (new Date().getTime())
													+ '" t');
							document.writeln(_S);
							return _S;
						}
					})();

					function sendRecommendSubmit(path, func_name, tag, tagCode,
							tagCond, kind, sort) {
						var f = document.sendRecommendForm;
						f.func_name.value = func_name;
						f.tag.value = tag;
						f.tagCode.value = tagCode;
						f.tagCond.value = tagCond;
						f.kind.value = kind;
						f.sort.value = sort;
						f.action = path;
						f.submit();
					}

					var oCityPoint12 = new nhn.api.map.TM128(322865, 542049); // 지도
																				// 정중앙
																				// 좌표

					var defaultLevel12 = 6;
					var oMap12 = new nhn.api.map.Map(document
							.getElementById('map12'), {
						point : oCityPoint12,
						zoom : defaultLevel12,
						enableWheelZoom : true,
						enableDragPan : true,
						enableDblClickZoom : false,
						mapMode : 0,
						activateTrafficMap : false,
						activateBicycleMap : false,
						minMaxLevel : [ 1, 14 ],
						size : new nhn.api.map.Size(823, 562)
					});
					var oSlider12 = new nhn.api.map.ZoomControl();
					oMap12.addControl(oSlider12);
					oSlider12.setPosition({
						top : 10,
						left : 10
					});
					var oMapTypeBtn12 = new nhn.api.map.MapTypeBtn();
					oMap12.addControl(oMapTypeBtn12);
					oMapTypeBtn12.setPosition({
						bottom : 20,
						right : 10
					});
					var oSize12 = new nhn.api.map.Size(28, 37);
					var oOffset12 = new nhn.api.map.Size(14, 37);
					var oIcon12 = new nhn.api.map.Icon(
							'http://static.naver.com/maps2/icons/pin_spot2.png',
							oSize12, oOffset12);
					var oInfoWnd12 = new nhn.api.map.InfoWindow();
					oInfoWnd12.setVisible(false);
					oMap12.addOverlay(oInfoWnd12);
					oInfoWnd12.setPosition({
						top : 20,
						left : 20
					});
					var oLabel12 = new nhn.api.map.MarkerLabel(); // - 마커 라벨
																	// 선언.
					oMap12.addOverlay(oLabel12); // - 마커 라벨 지도에 추가. 기본은 라벨이
													// 보이지 않는 상태로 추가됨.
					oInfoWnd12.attach('changeVisible', function(oCustomEvent) {
						if (oCustomEvent.visible) {
							oLabel12.setVisible(false);
						}
					});
					oMap12.attach('mouseenter', function(oCustomEvent) {
						var oTarget = oCustomEvent.target;
						// 마커위에 마우스 올라간거면
						if (oTarget instanceof nhn.api.map.Marker) {
							var oMarker = oTarget;
							oLabel12.setVisible(true, oMarker); // - 특정 마커를 지정하여
																// 해당 마커의 title을
																// 보여준다.
						}
					});
					oMap12.attach('mouseleave', function(oCustomEvent) {
						var oTarget = oCustomEvent.target;
						// 마커위에서 마우스 나간거면
						if (oTarget instanceof nhn.api.map.Marker) {
							oLabel12.setVisible(false);
						}
					});
					oMap12.attach('mouseenter', function(oCustomEvent) {
						var oTarget = oCustomEvent.target;
						// 마커위에 마우스 올라간거면
						if (oTarget instanceof nhn.api.map.Marker) {
							var oMarker = oTarget;
							oLabel12.setVisible(true, oMarker); // - 특정 마커를 지정하여
																// 해당 마커의 title을
																// 보여준다.
						}
					});
					oMap12.attach('mouseleave', function(oCustomEvent) {
						var oTarget = oCustomEvent.target;
						// 마커위에서 마우스 나간거면
						if (oTarget instanceof nhn.api.map.Marker) {
							oLabel12.setVisible(false);
						}
					});
					var oMarker12;
					oMarker = new nhn.api.map.Marker(oIcon12, {
						title : '울시상설할인점 (현대시티아울렛가든파이브)'
					});
					oMarker.setPoint(oCityPoint12);
					oMap12.addOverlay(oMarker);
					var num = 1;
					var markers12 = new Array();
					var markers32 = new Array();
					var markers39 = new Array();
					initMap12();
					initMap32();
					initMap39();

					function initMap12() {
						var oMarker;
						var oSizeP12;
						var oOffsetP12;
						var oIconP12;
						if (markers12.length > 0) {
							for (var i = 0; i < markers12.length; i++) {
								oMap12.addOverlay(markers12[i]);
							}
						} else {
							markers12 = new Array();
							for (var i = 0; i < info12.length; i++) {
								oSizeP12 = new nhn.api.map.Size(27, 24);
								oOffsetP12 = new nhn.api.map.Size(14, 37);
								oIconP12 = new nhn.api.map.Icon(
										'http://tong.visitkorea.or.kr/img/vk/kor/bz15/front/images/submain/common/ico/mark'
												+ info12[i][5] + '.png',
										oSizeP12, oOffsetP12);
								var oCityPoint12 = new nhn.api.map.TM128(
										info12[i][2], info12[i][3]);
								oMarker = new nhn.api.map.Marker(oIconP12, {
									title : info12[i][4]
								});
								oMarker.setPoint(oCityPoint12);
								markers12[i] = oMarker;
								oMap12.addOverlay(oMarker);

								num++;
							}
						}
						$(".contenttype_12").show();
					}
					function initMap32() {
						var oMarker;
						var oSizeP12;
						var oOffsetP12;
						var oIconP12;
						if (markers32.length > 0) {
							for (var i = 0; i < markers32.length; i++) {
								oMap12.addOverlay(markers32[i]);
							}
						} else {
							markers32 = new Array();
							for (var i = 0; i < info32.length; i++) {
								oSizeP12 = new nhn.api.map.Size(27, 24);
								oOffsetP12 = new nhn.api.map.Size(14, 37);
								oIconP12 = new nhn.api.map.Icon(
										'http://tong.visitkorea.or.kr/img/vk/kor/bz15/front/images/submain/common/ico/mark'
												+ info32[i][5] + '.png',
										oSizeP12, oOffsetP12);
								var oCityPoint12 = new nhn.api.map.TM128(
										info32[i][2], info32[i][3]);
								oMarker = new nhn.api.map.Marker(oIconP12, {
									title : info32[i][4]
								});
								oMarker.setPoint(oCityPoint12);
								markers32[i] = oMarker;
								oMap12.addOverlay(oMarker);

								num++;
							}
						}
						$(".contenttype_32").show();
					}
					function initMap39() {
						var oMarker;
						var oSizeP12;
						var oOffsetP12;
						var oIconP12;
						if (markers39.length > 0) {
							for (var i = 0; i < markers39.length; i++) {
								oMap12.addOverlay(markers39[i]);
							}
						} else {
							markers39 = new Array();
							for (var i = 0; i < info39.length; i++) {
								oSizeP12 = new nhn.api.map.Size(27, 24);
								oOffsetP12 = new nhn.api.map.Size(14, 37);
								oIconP12 = new nhn.api.map.Icon(
										'http://tong.visitkorea.or.kr/img/vk/kor/bz15/front/images/submain/common/ico/mark'
												+ info39[i][5] + '.png',
										oSizeP12, oOffsetP12);
								var oCityPoint12 = new nhn.api.map.TM128(
										info39[i][2], info39[i][3]);
								oMarker = new nhn.api.map.Marker(oIconP12, {
									title : info39[i][4]
								});
								oMarker.setPoint(oCityPoint12);
								markers39[i] = oMarker;
								oMap12.addOverlay(oMarker);

								num++;
							}
						}
						$(".contenttype_39").show();
					}
					function clearMap12() {
						for (var i = 0; i < markers12.length; i++) {
							oMap12.removeOverlay(markers12[i]);
						}
						$(".contenttype_12").hide();
					}
					function clearMap32() {
						for (var i = 0; i < markers32.length; i++) {
							oMap12.removeOverlay(markers32[i]);
						}
						$(".contenttype_32").hide();
					}
					function clearMap39() {

						for (var i = 0; i < markers39.length; i++) {
							oMap12.removeOverlay(markers39[i]);
						}
						$(".contenttype_39").hide();
					}

				});