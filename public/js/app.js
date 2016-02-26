console.log("vanilla js loaded from public/js/app.js");

$( document ).ready(function() {
  console.log( "jQuery ready from app.js!" );

  var $propertyForm = $('form#walls');
  var $map = $('#property-map');

  var markers = [];

  var a = 2;


  function closeAllInfoWindows() {
    markers.forEach(function(marker) {
      marker.infoWindow.close();
    });
  }


  if($map.length){
    var googleMap = new google.maps.Map($map[0], {
      center: {lat: 51.5117, lng: -0.1275},
      zoom: 12,

      styles: [
    {
        "featureType": "all",
        "stylers": [
            {
                "saturation": 0
            },
            {
                "hue": "#e7ecf0"
            }
        ]
    },
    {
        "featureType": "road",
        "stylers": [
            {
                "saturation": -70
            }
        ]
    },
    {
        "featureType": "transit",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "poi",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "water",
        "stylers": [
            {
                "visibility": "simplified"
            },
            {
                "saturation": -60
            }
        ]
    }
]


    })
  

    var wallsData = JSON.parse($('[name=walls-data]').val());
    console.log(wallsData);


    markers = wallsData.map(function(walls){

      var marker = new google.maps.Marker({
        // position: {lat: 51.5117, lng: -0.1275},
        position: {lat: walls.lat, lng: walls.lng},
        map: googleMap,
        animation: google.maps.Animation.DROP
      });


      var infoWindow = new google.maps.InfoWindow({
        position: {lat: walls.lat, lng: walls.lng},
        content: '<div class="info-window">' +
            '<h4>' + walls.title + '</h4>' + 
              // '<form action="/walls/' + walls.id + '" method="POST">' +
              //   '<input type="hidden" name="_method" value="DELETE">' +
                '<img src="' + walls.image + '" width=150px>' + '<br><br>' +
                '<a class="btn btn-primary" href="/walls/' + walls.id + '">have a look</a>' + 
              // '<form>' +
            '</div>'
      });

      marker.infoWindow = infoWindow;

      marker.addListener('click', function(){
        closeAllInfoWindows();
        marker.infoWindow.open(googleMap, marker);
        googleMap.panTo(marker.position);
        googleMap.setZoom(14);
      })

      return marker;
    })
  }



  if ($propertyForm.length){

    var gcoder = new google.maps.Geocoder();
    var $fields = $propertyForm.find('input.address');

    $fields.on('blur', function(){
      var address = $fields.toArray().map(function(elem) {
        return elem.value;
      }).filter(function(value) {
        return !!value;
      }).join(', ');

      console.log(address);

      gcoder.geocode({address: address}, function(results, status){
        if (status === "OK"){
          var location = results[0].geometry.location;
          $propertyForm.find('[name="wall[lat]"]').val(location.lat());
          $propertyForm.find('[name="wall[lng]"]').val(location.lng());
        }
        console.log(results, status);
      });

    });

  }



  function show_grid(){
      $("#gridmaps").delay(500).fadeToggle(); 
  }

  function show_maps(){
      $("#mapwalls").delay(500).fadeToggle(); 
  }


  $("#grid_btn").click(show_grid);

  $("#map_btn").click(show_grid);


  var $content = $('#toggle_menu');

  $content.children('div').hide();

  var counter = 2;


  $content.click(function(){
      if(counter%2 ===0 ){
      console.log("the button is responding to a click");
      $content.children('div').slideToggle();
      counter++;
    }
  });








});