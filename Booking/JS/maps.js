function myMap() {
    var myLatLng = { lat: 4.9221362, lng: 114.9477008 };

    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 17,
        center: myLatLng
    });

    var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
    });
}