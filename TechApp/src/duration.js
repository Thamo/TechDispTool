<script src="http://maps.google.com/maps/api/js?sensor=true"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

<script>
var duration;
var directionDisplay;  
var map;    
var directionsService = new google.maps.DirectionsService();
function calcRoute(start, end) {
            var request = {
            origin:start,
            destination:end,
            travelMode:google.maps.DirectionsTravelMode.DRIVING
        };
        directionsService.route(request, function(response, status) {
            if (status == google.maps.DirectionsStatus.OK) {
                directionsDisplay.setDirections(response);
        duration = response.routes[0].legs[0].duration.value/60;
            }
       
        });
}
</script>