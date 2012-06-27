$(document).ready(function(){

	$('.lightbox').click(function(){
		$('.lb_backdrop, .lb_box').animate({'opacity':'.50'}, 300, 'linear');
		$('.lb_box').animate({'opacity':'1.00'}, 300, 'linear');
		$('.lb_backdrop, .lb_box').css('display', 'block');
	});

	$('.lb_close').click(function(){
		close_box();
	});

	$('.lb_backdrop').click(function(){
		close_box();
	});

});

function close_box()
{
	$('.lb_backdrop, .lb_box').animate({'opacity':'0'}, 300, 'linear', function(){
		$('.lb_backdrop, .lb_box').css('display', 'none');
	});
}
