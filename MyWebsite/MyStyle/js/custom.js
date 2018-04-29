// Nav Affix top
$(document).ready(function() {

  var toggleAffix = function(affixElement, scrollElement, wrapper) {
  
    var height = affixElement.outerHeight(),
        top = wrapper.offset().top;
    
    if (scrollElement.scrollTop() >= top){
        wrapper.height(height);
        affixElement.addClass("affix");
    }
    else {
        affixElement.removeClass("affix");
        wrapper.height('auto');
    }
      
  };
  

  $('[data-toggle="affix"]').each(function() {
    var ele = $(this),
        wrapper = $('<div></div>');
    
    ele.before(wrapper);
    $(window).on('scroll resize', function() {
        toggleAffix(ele, $(this), wrapper);
    });
    
    // init
    toggleAffix(ele, $(window), wrapper);
  });
  
});

// ACCORDION Toggle
var selClass = 'open';

$('.accordion h6').click(function() {
    // Remove the defined class name in the `selClass` variable on any sibling that has it set
    $(this).parents('.accordion h6').find('span' + selClass).removeClass(selClass);

    // Add the selected class to the button that was clicked
    $(this).toggleClass(selClass);
	
	
});

$(function() {
    $('.card-icons .fa-heart').on('click', function() {
        var self = this;
        var parent = $(self).parent();
		if( !$(parent).find('card-icons .fa-heart').hasClass('active') ) {
			 $(self).toggleClass('active');
		} 
		
    });
});

// Dropup
$('.dropdown').on('shown.bs-placeholder', function() {
    var c = $('.dropdown-menu').offset();
    if(($(window).height()-c.top) < 10) {
        $('.dropdown').addClass('dropup');
    }
});


