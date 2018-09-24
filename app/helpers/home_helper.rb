module HomeHelper
  def static_map_for(location, options = {})
    params = {
        center: [location[:lat], location[:lng]].join(","),
        zoom: 18,
        size: "600x300",
        markers: [location[:lat], location[:lng]].join(","),
        sensor: true
      }.merge(options)

    query_string =  params.map{|k,v| "#{k}=#{v}"}.join("&")
    image_tag "http://maps.googleapis.com/maps/api/staticmap?#{query_string}&key=AIzaSyBjqTiOhbq6PiOEciPwtEEigf5VchFFsZc", alt: location[:name]
  end

end
