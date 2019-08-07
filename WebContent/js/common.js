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

    window.onload = function() {

            var level = document.getElementById("levelFooter");
            var mountain = document.getElementById("mountainFooter");
            var community = document.getElementById("communityFooter");


            level.addEventListener("mouseover", function() {
                level.src = "./img/adventurer.png";
            });
            level.addEventListener("mouseout", function() {
                level.src = "./img/adventurerblk.png";
            });


            mountain.addEventListener("mouseover", function() {
                mountain.src = "./img/goals.png";
            });
            mountain.addEventListener("mouseout", function() {
                mountain.src = "./img/goalsblk.png";
            });


            community.addEventListener("mouseover", function() {
                community.src = "./img/friendship.png";
            });
            community.addEventListener("mouseout", function() {
                community.src = "./img/friendshipblk.png";
            });

        }
