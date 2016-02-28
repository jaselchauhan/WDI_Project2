$(document).ready(function() {

  console.log("jQuery load pass on presentation.html");

  var $content = $('#presentationContent');

  $content.children('p').hide();

  
  $content.click(function(){
      console.log("the button is responding to a click");
      $content.children('p').slideToggle();
  });



});





