// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
	$("#all_products").imagesLoaded(function() {
	  $("#all_products").masonry({
	  itemSelector: '.each_product',
      columnWidth: 330
	  });
	});  
});