$(document).on('ready page:load', function() {
	$('#search-form').submit(function(event) {
		event.preventDefault();
		var searchValue = $('#search').val();

		$.getScript('/products?search=' + searchValue);
	});

});

$('.fileinput').fileinput();
// $(document).on('ready page:load', function() {
// 	$(window).scroll(function() {
// 		if ( $(window).scrollTop() > ($(document).height() - $(window).height() - 50)) {
// 			var nextPage = $('.pagination .next a');
// 			if ( nextPage.length > 0 ) {
// 				var href = nextPage.attr('href');
// 				$.getScript(href);
// 			}	
// 		}
// 	});
// 	$('.alert').delay(5000).fadeOut(1000);
// })