$(document).ready(function(){
  
  //alert('test');  
  $(document).on('click', '.link', function () {
      $(this).parent().next(".content").toggle();
  });
});
var ready;
ready = function() {
  $('.content').hide();
};
$(document).on('page:load', ready);