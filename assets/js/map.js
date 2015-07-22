function getMapCanvas() {
    return document.getElementById('map-canvas');
}

function getMapOptions() {
    return {
        center: new google.maps.LatLng(27.9577858, -15.5964363),
        zoom: 10,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }
}

function makeMap(mapCanvas, mapOptions){
    new google.maps.Map(mapCanvas, mapOptions);
}

function centerMap(map){
    var center = map.getCenter()
    google.maps.event.trigger(map, "resize");
    map.setCenter(map.getCenter)
}

function initialize() {
    var map = makeMap(getMapCanvas(), getMapOptions());
    google.maps.event.addDomListener(window, "resize", function(){centerMap(map)});
}
