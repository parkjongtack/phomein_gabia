 $(document).ready(function() {
    $('#fullpage').fullpage({
        anchors:['firstPage', 'secondPage', 'thirdPage', 'fourthPage', 'fifthPage', 'sixthPage', 'seventhPage'],
        menu: '.right-nav',
        afterLoad: function(anchorLink, index){
            if(index == 2){
				setTimeout(function(){
					$('.volume').counterUp({delay: 10,time: 500});
				},50);
			}
			if(index == 3){
				setTimeout(function(){
					$('.volume2').counterUp({delay: 10,time: 500});
				},50);
			}
            if(index == 4){
                setTimeout(function(){
					$('.main_04_mo').addClass('on');
					setTimeout(function(){
						$('.gift_box_ico').addClass('gift_on');
					},500);
				},50);
            }

			if(index != 4){
                setTimeout(function(){
					$('.main_04_mo').removeClass('on');
					$('.gift_box_ico').removeClass('gift_on');
				},50);
            }
            if(index == 8){
                $('#dHead').addClass('scroll');
            }else{
                $('#dHead').removeClass('scroll');
            }
            
            switch(index){
                case 1:
                    $('#sc_down_box a').show();
                    $('#sc_down_box a').attr("href", "#secondPage")
                    break;
                    case 2:
                    $('#sc_down_box a').show();
                    $('#sc_down_box a').attr("href", "#thirdPage")
                    break;
                case 3:
                    $('#sc_down_box a').show();
                    $('#sc_down_box a').attr("href", "#fourthPage")
                    break;
                case 4:
                    $('#sc_down_box a').show();
                    $('#sc_down_box a').attr("href", "#fifthPage")
                    break;
                case 5:
                    $('#sc_down_box a').show();
                    $('#sc_down_box a').attr("href", "#sixthPage")
                    break;
                case 6:
                    $('#sc_down_box a').show();
                    $('#sc_down_box a').attr("href", "#seventhPage")
                    break;
                case 7:
                    $('#sc_down_box a').show();
                    $('#sc_down_box a').attr("href", "#footer")
                    break;
                    
                /* default:
                    $('#sc_down_box a').hide(); */
            }
        }
    });
	// Swiper
	function mSwiper() {
		var mSwiper = new Swiper('.swiper', {
			wrapperClass: 'swiper_wrap',
			slideClass: 'swiper_slide',
			slidesPerView: 1,
			effect: "fade",
			loop: true,
			speed: 500,
			autoplay: {
				delay: 4000,
				disableOnInteraction: false
			},
			pagination: {
				el: '.swiper_pagination',
				clickable: true,
			},
		});
	}
	if( $(".swiper .swiper_slide").length > 1 ){
		mSwiper();
		//$('.swiper_slide .cont').css({height: '75%'});
	}
});











