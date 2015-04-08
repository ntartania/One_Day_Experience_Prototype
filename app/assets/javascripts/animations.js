$(document).ready(function() {
	$('#left-circle').hover(function() {
		$('#svg-circle').css('stroke-width', 6);
		console.log(2)
	}, function () {
		$('#svg-circle').css('stroke-width', 3);
	});

	$('#right-circle').hover(function() {
		$('#svg-circle-right').css('stroke-width', 6);
		console.log(2)
	}, function () {
		$('#svg-circle-right').css('stroke-width', 3);
	});
});