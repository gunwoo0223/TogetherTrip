$(document).ready(function(){
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
				//$("html,body").stop(true,true).animate({scrollTop:n},300,"easeInOutCubic");
			} else {
				tparent.next().stop(true, true).hide();
				tparent.parent().removeClass("open");
				t.removeClass("ov");
			}
			event.preventDefault();
		}
		btn.on("click", _in);
	}());
});