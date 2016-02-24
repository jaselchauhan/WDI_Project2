console.log("vanilla js loaded from public/js/app.js");

$( document ).ready(function() {
    console.log( "jQuery ready from app.js!" );



    var $propertyForm = $('form#walls');
    var $map = $('#property-map');


    if($map.length){
      var googleMap = new google.maps.Map($map[0], {
        center: {lat: 51.5117, lng: -0.1275},
        zoom: 10,

        styles: [{"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#000000"},{"lightness":40}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#000000"},{"lightness":16}]},{"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"lightness":20},{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"lightness":17},{"weight":1.2}]},{"featureType":"administrative.province","elementType":"geometry.stroke","stylers":[{"visibility":"off"}]},{"featureType":"administrative.province","elementType":"labels.text.fill","stylers":[{"visibility":"on"},{"color":"#ffffff"}]},{"featureType":"administrative.locality","elementType":"labels.text.fill","stylers":[{"color":"#faeaea"}]},{"featureType":"administrative.neighborhood","elementType":"geometry.fill","stylers":[{"color":"#ff0000"}]},{"featureType":"administrative.neighborhood","elementType":"labels.text.fill","stylers":[{"color":"#9e9e9e"}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"landscape.man_made","elementType":"geometry.fill","stylers":[{"color":"#303030"}]},{"featureType":"landscape.natural.landcover","elementType":"geometry.fill","stylers":[{"color":"#5d7262"}]},{"featureType":"landscape.natural.terrain","elementType":"geometry.fill","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":21}]},{"featureType":"poi.business","elementType":"geometry.fill","stylers":[{"color":"#6d645e"}]},{"featureType":"poi.medical","elementType":"geometry.fill","stylers":[{"color":"#cd8aa6"}]},{"featureType":"poi.park","elementType":"geometry.fill","stylers":[{"color":"#649575"}]},{"featureType":"poi.park","elementType":"labels.text.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#fff8a6"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.highway","elementType":"labels.text.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"road.highway.controlled_access","elementType":"geometry.fill","stylers":[{"visibility":"on"}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#aab4ba"}]},{"featureType":"road.arterial","elementType":"labels.text.fill","stylers":[{"color":"#c7c7c7"}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":16}]},{"featureType":"road.local","elementType":"geometry.fill","stylers":[{"color":"#5a6063"}]},{"featureType":"road.local","elementType":"labels.text.fill","stylers":[{"color":"#bbbbbb"}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#0e1764"},{"lightness":17}]},{"featureType":"water","elementType":"geometry.fill","stylers":[{"color":"#26556c"}]}]


      })
    }

    var wallsData = JSON.parse($('[name=walls-data]').val());
    console.log(wallsData);


    var markers = wallsData.map(function(walls){

        marker = new google.maps.Marker({
          // position: {lat: 51.5117, lng: -0.1275},
          position: {lat: walls.lat, lng: walls.lng},
          map: googleMap,
          animation: google.maps.Animation.DROP
        })

        infoWindow = new google.maps.InfoWindow({
          content: '<div class="info-window"><h4>Charring Cross </h4></div>'
        })

        marker.addListener('click', function(){
          infoWindow.open(googleMap,marker);
          googleMap.panTo(marker.position);
          googleMap.setZoom(14);
        })


    })


    // var markers = propertyData.map(function(property){

    //   // var marker = new google.maps.Marker({
    //     position: {lat: property.lat, lng: property.lng},
    //     // animation: google.maps.Animation.DROP,
    //     // map: map
    //   });













});