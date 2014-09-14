document.addEventListener('DOMContentLoaded', function(){

      function initialize() {
        var mapOptions = {
          center: { lat: 40.7056308, lng: -73.9780035},
          zoom: 12
        };
        var map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);
      }

      google.maps.event.addDomListener(window, 'load', initialize);
});
