company_map = ->
  map_options =
    center: new (google.maps.LatLng)(6.838232, 79.880242)
    zoom: 15

  handler = Gmaps.build('Google')
  handler.buildMap { provider: map_options, internal: id: 'company_map' }, ->
    markers = handler.addMarkers([ {
      lat: 6.838232
      lng: 79.880242
      infowindow: 'UCD Properties'
    } ])

$(document).ready company_map
