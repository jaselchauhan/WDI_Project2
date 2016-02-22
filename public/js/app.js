console.log("vanilla js loaded from public/js/app.js");

// $( document ).ready(function() {
    console.log( "jQuery ready from app.js!" );




function initialize() {
  var mapCanvas = document.getElementById('map');
  var mapOptions = {
    center: new google.maps.LatLng(15.0112, 74.0217),
    zoom: 17,
    mapTypeId: google.maps.MapTypeId.HYBRID
  }
  var map = new google.maps.Map(mapCanvas, mapOptions)
  google.maps.event.addDomListener(window, 'load', initialize);
}


// });