$(document).ready(
		function() {
			function viewTourMap(num) {
				$("#mapDiv" + num).show();
				for (var i = 1; i <= 3; i++) {
					if (num != i) {
						$("#mapDiv" + i).hide();
					}
				}
			}
			// 길찾기 스크립트
			function fncSearchLoad() {
				// 텍스트 주소를 좌표로 변환
				var sAddr = $.trim($("input[name=stext]").val());
				var eAddr = $.trim($("input[name=etext]").val());
				var result1 = "";
				var result2 = "";
				var code1 = "";
				var code2 = "";
				if (eAddr == "") {
					alert("목적지를 입력해 주세요!");
					return false;
				}

				var sPosX = "";
				var sPosY = "";
				var ePosX = "";
				var ePosY = "";

				if (sAddr != "") {
					result1 = getPosXY(sAddr, "addr");
					var pos1 = result1.split("\|");
					if (pos1 != null) {
						code1 = pos1[0];
					}
					if (code1 != "0") {
						result1 = getPosXY(sAddr, "area");
						pos1 = result1.split("\|");
						if (pos1 != null) {
							code1 = pos1[0];
						}
					}
					if (code1 == "0" && pos1.length >= 3) {
						sPosX = pos1[1];
						sPosY = pos1[2];
					}

					if (code1 != "2") {
						result2 = getPosXY(eAddr, "addr");
						var pos2 = result2.split("\|");
						if (pos2 != null) {
							code2 = pos2[0];
						}
						if (code2 != "0") {
							result2 = getPosXY(eAddr, "area");
							pos2 = result2.split("\|");
							if (pos2 != null) {
								code2 = pos2[0];
							}
						}
						if (code2 == "0" && pos2.length >= 3) {
							ePosX = pos2[1];
							ePosY = pos2[2];
						}
					}
				} else {
					result2 = getPosXY(eAddr, "addr");
					var pos2 = result2.split("\|");
					if (pos2 != null) {
						code2 = pos2[0];
					}
					if (code2 != "0") {
						result2 = getPosXY(eAddr, "area");
						pos2 = result2.split("\|");
						if (pos2 != null) {
							code2 = pos2[0];
						}
					}
					if (code2 == "0" && pos2.length >= 3) {
						ePosX = pos2[1];
						ePosY = pos2[2];
					}
				}
				sAddr = encodeURIComponent(sAddr);
				eAddr = encodeURIComponent(eAddr);
				// 길찾기 새창
				var url = "http://maps.naver.com/?sX=" + sPosX + "&sY=" + sPosY
						+ "&sText=" + sAddr + "&eX=" + ePosX + "&eY=" + ePosY
						+ "&eText=" + eAddr;
				window.open(url);
			}
			function getPosXY(addr, mode) {
				var rdata = ""; // 넘겨줄 데이터
				var code = "1"; // 코드 : 0 = 정상 , 1 = 오류 , 2 = exception
				var posx = ""; // x 좌표
				var posy = ""; // y 좌표
				var query = encodeURIComponent(addr);
				var apiCode = "9895eef6a172a21d9e2175d3acf5054a";
				var searchCode = "";

				$.ajax({
					type : "GET",
					async : false,
					url : "/kor/bz15/include/findGeoCode.jsp?mode=" + mode
							+ "&searchkey=" + searchCode + "&key=" + apiCode
							+ "&query=" + query,
					dataType : "text",
					success : function(data) {
						data = $.trim(data);
						if (data != "") {
							var pos = data.split("\|");
							if (pos != null && pos.length >= 2) {
								code = "0";
								posx = pos[0];
								posy = pos[1];
							}
						}
					},
					error : function(x, o, e) {
						alert("좌표 데이터를 조회하는중 오류가 발생하였습니다.\n내용:" + x.status
								+ " : " + o + " : " + e);
						code = "2";
					}
				});
				rdata = code + "|" + posx + "|" + posy
				return rdata;
			}
		});