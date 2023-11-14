$(function(){
	// AOS plugin
	// try{
		AOS.init();
	// }catch(e){}

	// Main
	$('.main__notice-btn').on('click', function(){
		if($(this).hasClass('active') == false){
			$('.main__dimmed').fadeIn(300, function(){
				$('.main__noti-layer').fadeIn(300);
			});
			$(this).addClass('active');
		} else {
			$('.main__noti-layer').fadeOut(300, function(){
				$('.main__dimmed').fadeOut(300);
			});
			$(this).removeClass('active');
		}
	});

	$('.main__noti-layer__close, .main__dimmed').on('click', function(){
		$('.main__notice-btn')[0].click();
	});


	// Mail Layer
	$('.school__mail').on('click', function() {
		showLayer('.layer-common--mail', '.layer-dimmed--mail', this);
	});
	$('.layer-common--mail .layer-common__close, .layer-dimmed--mail').on('click', function() {
		$('.school__mail')[0].click();
	});

	// School Layer
	$('.school__ignore').on('click', function() {
		showLayer('.layer-common--ignore', '.layer-dimmed--ignore', this);
	});
	$('.layer-common--ignore .layer-common__close, .layer-dimmed--ignore').on('click', function() {
		$('.school__ignore')[0].click();
	});

	function showLayer(layerClass, dimmedClass, trigger) {
		if ($(trigger).hasClass('active') == false) {
			$(dimmedClass).fadeIn(300, function() {
				$(layerClass).fadeIn(300).css('display', 'flex');
			});
			$(trigger).addClass('active');
		} else {
			$(layerClass).fadeOut(300, function() {
				$(dimmedClass).fadeOut(300);
			});
			$(trigger).removeClass('active');
		}
	}

	// ing
});