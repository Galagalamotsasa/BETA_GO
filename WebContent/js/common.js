$(document).ready(function(){
	// gnb
	$('.gnbOpen').css('z-index', '1002');
	$('.gnbClose').css('z-index', '1001');
	$('.gnbOpen').click(function(){
		$(this).addClass('closeShape');
		if( ! $('.gnb').hasClass('active') ){
			$('.gnbClose').css('z-index', '1002');
			$('.gnbOpen').css('z-index', '1001');
			$('.gnb').addClass('active');
			$('.gnb').slideDown();
		} else{
			return false;
		}
	});
	$('.gnbClose').click(function(){
		$('.gnbOpen').removeClass('closeShape');
		if( ! $('.gnb').hasClass('active') ){
			return false;
		} else{
			$('.gnb').slideUp(300, function(){
				$('.gnbOpen').css('z-index', '1002');
				$('.gnbClose').css('z-index', '1001');
				$('.gnb').removeClass('active');
			});
		}
	});
	
	// gnb_resize 초기화
	if( window.innerWidth < 1024 ){
		$(window).resize(function(){
			if( window.innerWidth > 1024 ){
				$('.gnb').css('display', 'block');
				$('.gnb').find('.active').removeClass('active');
				$('.gnb').removeAttr("style");
				$('.gnbOpen').css('z-index', '1002');
				$('.gnbClose').css('z-index', '1001');
				$('.gnbOpen').removeClass('closeShape');
			}
		});
	} else{
		$(window).resize(function(){
			if( window.innerWidth < 1024 ){
				$('.gnb').find('.active').removeClass('active');
			}
		});
	}

	// topButton
	$('.topButton').click(function(e){
		e.preventDefault();
		$(window).scrollTop(0);
	});
});