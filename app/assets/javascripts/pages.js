$(document).ready(function(){

  /* $(function() {
    $( "#email_modal" ).dialog({
      height: 140,
      modal: true
    });
  }); */

     $("#all_products").imagesLoaded(function() {         
     $('#all_products').infinitescroll({

     navSelector  : "div.pagination",           
                    // selector for the paged navigation (it will be hidden)
     nextSelector : "div.pagination a:first",   
                    // selector for the NEXT link (to page 2)
     itemSelector : ".each_product"},  
                    // selector for all items you'll retrieve
          // trigger Masonry as a callback
          function( newElements ) {
            // hide new items while they are loading
            var $newElems = $( newElements ).css({ opacity: 0 });
            // ensure that images load before adding to masonry layout
            $newElems.imagesLoaded(function(){
              // show elems now they're ready
              $newElems.animate({ opacity: 1 });
              $("#all_products").masonry( 'appended', $newElems, true );              
            });
          });
     });
});
