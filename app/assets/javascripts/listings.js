document.addEventListener('DOMContentLoaded', function(){

      
        var mapOptions = {
          center: { lat: 40.7056308, lng: -73.9780035},
          zoom: 12
        };
      
      
       map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);

      // google.maps.event.addDomListener(window, 'load', initialize);
		  var pos = new google.maps.LatLng(40.758895, -73.985131)
			
			var marker = new google.maps.Marker({
			position: pos,
	    map: map,
	    title:"Hello World!"


	});

			gatherListings();

});

function gatherListings(){
	// console.log("loading");
	var listings = document.querySelectorAll(".listing")
	// console.log(listings.length);

	for(var i = 0;  i < listings.length;i++){
		var lat =listings[i].querySelector("#lat").innerHTML;
		var lng = listings[i].querySelector("#long").innerHTML;

		if (lat != null){ 
		  appendListing(lat, lng);
	  }

	}
}

function appendListing(lat, lng){
		console.log(lat);

	// var map = google.maps.Map(document.getElementById('map-canvas'));
	var pos = new google.maps.LatLng(lat, lng)
			
			var marker = new google.maps.Marker({
			position: pos,
	    title:"Hello World!"
	});
			marker.setMap(map);
}
