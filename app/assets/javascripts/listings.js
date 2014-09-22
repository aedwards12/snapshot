document.addEventListener('DOMContentLoaded', function(){   
  
  var mapOptions = {
    center: { lat: 40.7056308, lng: -73.9780035},
    zoom: 12
  };
     
  var map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);
	gatherListings(map);

});

function gatherListings(map){

	var listings = document.querySelectorAll(".listing")
	for(var i = 0;  i < listings.length;i++){
		var lat =listings[i].querySelector("#lat").innerHTML;
		var lng = listings[i].querySelector("#long").innerHTML;
		var address = listings[i].querySelector("#address").innerHTML;
		if (lat != null){ 
		  appendListing(lat, lng, address, map);
		  // addListener(address);
	  }
	}
}

function appendListing(lat, lng, address, map){

	var pos = new google.maps.LatLng(lat, lng)	
	var marker = new google.maps.Marker({
	  position: pos,
    title: address
	});

	marker.setMap(map);
	_addListener(marker, address);
}

function _addListener(marker, address){
	console.log(address)
	var infowindow = new google.maps.InfoWindow({
		content: address
	});

	google.maps.event.addListener(marker, 'mouseover', function(){
		infowindow.open(marker.get('map'), marker);
	});
	google.maps.event.addListener(marker, 'mouseout', function(){
		infowindow.close();
	});
}
