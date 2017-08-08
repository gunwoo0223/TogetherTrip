$(document).ready(function() {
	$('.tabs ul li a').on('click', function() {
		var topic = $(this).attr('id');
		var state = $('#state').val();
		var city = $('#city').val();
		var topicList = $('#topicList').val();
		
		$(location).attr('href', 'searchResult.do?currentPage=1&topic=' 
				+ topic + '&state=' + state + '&city=' + city + "&topicList=" + topicList);
	});
});