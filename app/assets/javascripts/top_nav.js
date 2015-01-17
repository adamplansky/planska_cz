$(document).ready(function(){
  
   $(document).on('click touchstart', '.link', function () {
       $(this).parent().next(".content").toggle();
   });
});
var ready;
ready = function() {
  $('.content').hide();
  var url = window.location.href;
  var uriId = url.split("#")[1];
  if(uriId != null){
    $("#" + uriId).next(".content").toggle();
  }
};
$(document).on('page:load', ready);