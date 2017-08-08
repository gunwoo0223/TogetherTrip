(function (jQuery) {

    jQuery.comment = {

        update: function (comment_idx) {
            jQuery.ajax({
                type: "post",
                url: "/kor/social/SocialAuthSignIn.kto?command=updateReply&snsName=" + jQuery.social.social_main_name + "&replyNum=" + comment_idx,
                success: function (data) {
                    location.reload();
                },
                complete: function (data) {},
                error: function (xhr, status, error) {
                    //alert("에러발생");
                }
            });
        },
        save: function () {
			var text1 = "";
			if(jQuery.social.text1 != null && jQuery.social.text1 != "") {
				text1 = "&text1=" + jQuery.social.text1;
			}
		
            if (jQuery.social.isBlank(jQuery("#replyArea").val())) {
                alert("내용을 입력 해주세요.");
                return;
            }
			
            jQuery('#replySendBtn').unbind('click');
            //escape(document.URL)
            jQuery.ajax({
                type: "post",
                async: false,
                url: "/kor/social/SocialAuthSignIn.kto",
                //data: "command=insertReply&snsName=" + jQuery.social.social_main_name + "&replyType=" + jQuery.social.type + "&eventNum=" + jQuery.social.event_page_num + "&replyArea=" + encodeURIComponent (jQuery("#replyArea").html()),
				
				data: "command=insertReply&snsName=" + jQuery.social.social_main_name + "&replyType=" + jQuery.social.type + "&eventNum=" + jQuery.social.event_page_num + "&replyArea=" + encodeURIComponent(jQuery("#replyArea").val()) + text1,
                success: function (data) {
                    jQuery("#replySendBtn").bind("click", function () {
                        jQuery.comment.save();
                    });
                    //location.reload();
					location.href="/kor/social/SocialAuthSignIn.kto?command=replyPage&replyType=" + jQuery.social.type + "&eventNum=" + jQuery.social.event_page_num+"&curr_page=1" + text1;
                },
                error: function (xhr, status, error) {
                    //alert("에러발생"+error);
                    location.reload();
                }
            });

        },
        before_save: function () {
            //escape(document.URL)
            //eval("var personal_info_val=jQuery.social." + jQuery.social.social_main_name + "_personal_info;");
            jQuery.ajax({
                type: "post",
                async: false,
                url: "/kor/social/SocialAuthSignIn.kto",
                data: "command=checkUserStauts&snsName=" + jQuery.social.social_main_name + "&replyType=" + jQuery.social.type + "&eventNum=" + jQuery.social.event_page_num,
                success: function (data) {
                    //console.log(data);
                    if (data === 'nosign') {
                        jQuery.comment.confirm_terms();
                    }
                },
                complete: function (data) {
                    if (data === 'fail') {
                        return;
                    }
                },
                error: function (xhr, status, error) {
                    //alert("에러발생 : " + error);
                }
            });

        },
        del: function (snsName, comment_idx) {
            var my_url = location.href;
			//삭제 컨펌
			if(confirm("정말 삭제하시겠습니까?")) {
				jQuery.ajax({
					type: "post",
					async: false,
					url: "/kor/social/SocialAuthSignIn.kto?command=deleteReply&snsName=" + snsName + "&replyType=" + jQuery.social.type + "&eventNum=" + jQuery.social.event_page_num + "&replyNum=" + comment_idx,
					success: function (data) {
						location.replace(my_url);
					},
					error: function (xhr, status, error) {
						location.reload();
					}
				});
			}
			
        },
        confirm_terms: function () {
            var pop_width = 700;
            var pop_height = 675;
            var left = ($(window).scrollLeft() + ($(window).width() - pop_width) / 2);
            var top = ($(window).scrollTop() + ($(window).height() - pop_height) / 2);
            var pop = window.open("/kor/social/SocialAuthSignIn.kto?command=confirmAccessTerms&eventNum=" + jQuery.social.event_page_num, "agreePop", "toolbar=no,location=no,directories=no,status=no,menubar=no,resizable=yes,width=" + pop_width + "px,height=" + pop_height + "px,top=" + top + ",left=" + left + "");

            if (pop == null) {
                alert("팝업이 차단된 상태입니다. 팝업을 허용해주세요.");
                return;
            } else {
                pop.focus();
            }
        },
        text_count: function (textArea, target, max) {
			$('.remaining').each(function () {
				// count 정보 및 count 정보와 관련된 textarea/input 요소를 찾아내서 변수에 저장한다.
				var $maxcount = $(max, this);
				var $count = $(target, this);
				var $input = $(textArea);
				
				// .text()가 문자열을 반환하기에 이 문자를 숫자로 만들기 위해 1을 곱한다.
				var maximumByte = $maxcount.text() * 1;
				// update 함수는 keyup, paste, input 이벤트에서 호출한다.
				var update = function () {
					var before = $count.text() * 1;
					var str_len = $input.val().length;
					var cbyte = 0;
					var li_len = 0;
					for (i = 0; i < str_len; i++) {
						var ls_one_char = $input.val().charAt(i);
						if (escape(ls_one_char).length > 4) {
							cbyte += 2; //한글이면 2를 더한다
						} else {
							cbyte++; //한글아니면 1을 다한다
						}
						if (cbyte <= maximumByte) {
							li_len = i + 1;
						}
					}
					// 사용자가 입력한 값이 제한 값을 초과하는지를 검사한다.
					if (parseInt(cbyte) > parseInt(maximumByte)) {
						alert('허용된 글자수가 초과되었습니다.\n초과분은 자동삭제됩니다.');
						var str = $input.val();
						var str2 = $input.val().substr(0, li_len);
						$input.val(str2);
						var cbyte = 0;
						for (i = 0; i < $input.val().length; i++) {
							var ls_one_char = $input.val().charAt(i);
							if (escape(ls_one_char).length > 4) {
								cbyte += 2; //한글이면 2를 더한다
							} else {
								cbyte++; //한글아니면 1을 다한다
							}
						}
					}
					$count.text(cbyte);
				};
				// input, keyup, paste 이벤트와 update 함수를 바인드한다
				$input.bind('input keyup keydown paste change', function () {
					setTimeout(update, 0)
				});
				update();
				$count.text(0)
			});
        }
    }
})(jQuery);

//이벤트 종료체크
function funcEventLimit(){
	var replyType = jQuery.social.type;
	//var endDate=$("#hidEndDate").val();
	var endDate= jQuery.social.event_end_date;
	var now = new Date();
	var year= now.getFullYear();
	var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);
	var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();
	var today = year + '-' + mon + '-' + day;
	//$(this).val(chan_val);
	//alert(jQuery.social.isBlank2(endDate));
	//alert(replyType);
	if((endDate < today) && (jQuery.social.isBlank2(endDate) === false) && replyType == "eventReply"){
		//alert("이벤트가 종료되었습니다.");
		return true;
	}else{
		return false;
	}
}