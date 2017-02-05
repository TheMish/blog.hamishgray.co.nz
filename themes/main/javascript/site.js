
/*=========================
 *	Banner
 *========================*/

function fullscreen(){
	var wh = $(window).height();
	if(wh > 700){
		$('body').find('.fs').css('height', wh + "px");
	}else{
		$('body').find('.fs').css('height', "700px");
	}
}

$(document).ready(function() { fullscreen(); });
$(window).resize(function() { fullscreen(); });



$(document).scroll(function(){

	var st=($(document).scrollTop()/4);
	var opac=1-($(document).scrollTop()/600);
	
	$('#banner .banner-inner').css({
		"margin-top":st,
		"margin-bottom":-st,
		"opacity":opac
	});

});




/*=========================
 *	Accordian
 *========================*/


$('.accordian').find('.slide .details').hide();
$('.accordian .slide').click(function(){
	if($(this).hasClass('active')){
		$(this).removeClass('active');
		$(this).find('.details').slideUp();
	}else{
		$(this).parent().find('.slide.active .details').slideUp();
		$(this).parent().find('.slide.active').removeClass('active');
		$(this).addClass('active');
		$(this).find('.details').slideDown();
	}
});


/*=========================
 *	Popups
 *========================*/


$('.popup_link').click(function(){
	var target = $(this).attr('data-popup-id');
	$('#' + target).addClass('open').fadeIn();
	$('body').addClass('noscroll');
});
	

hidePopup = function(){
	$('.popup_wrapper.open').removeClass('open').fadeOut();
	$('body').removeClass('noscroll');
}

$('.popup_wrapper').click(function(e) {
	if ($(e.target).closest('.popup_wrapper .container').length === 0) {
		hidePopup();
	}
});
	
$('.popup_close').click(function(e) {
	hidePopup();
});



