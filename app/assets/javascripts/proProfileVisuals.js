

$(document).ready(function(){

	var sectorImageWidth = $('#profile-image--sector').css('width');
	
	$('#profile-image--sector').css('height',sectorImageWidth);
	$('#profile-text--individual').css('height',sectorImageWidth);
	$('.jsHandle').css('height',sectorImageWidth);

	$('.jsHandle').css('margin-top','-100%');

	if ($("#darkPage").length){
    
    	console.log('ready');
    	$('#sidebar').css('background-color', '#303030');
    	$('.links').css('color', '#E4E4E4');
    
	}	


	var startMargin = $('.jsHandle').css('margin-top');
	$('#jsLocationButton').hover(function(){				
		$('.jsHandle').css({marginTop:startMargin}).animate({marginTop: 0},1000)
	}, function() {	
		$('.jsHandle').css({marginTop: 0}).animate({marginTop: startMargin},1000)
	});

});


