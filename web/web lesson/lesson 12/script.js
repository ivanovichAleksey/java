$(function(){
	var vdh = $(document).outerWidth();
	if (vdh < 780){
		var mLeft = $('.left-menu ul');
		$('.top-menu').find('li').filter(':first').after('<li class="appthis"><a href="" class="toggle">Каталог</a></li>');
		$('.appthis').append($(mLeft));
	}
	if (vdh < 1200){
		$( ".toggle" ).click(function() {
			if ($(this).hasClass('button-menu')){
				var te = $(this);
			} else{
				var te = $(this).parents('ul').find(".toggle");
			}
			$(te).next().hide(50);
			if($(this).hasClass('active')){
				$(this).removeClass('active');
			}
			else{
				$(te).removeClass('active');
 				$(this).next().show(50);
 				$(this).addClass('active');

 			}
 			return false;
 			
		});
	}
	
});
