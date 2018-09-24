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

  def company_map
    image_tag "http://maps.googleapis.com/maps/api/staticmap?center=6.838232,79.880242&zoom=18&size=600x300&markers=6.838232,79.880242&sensor=true&key=AIzaSyBjqTiOhbq6PiOEciPwtEEigf5VchFFsZc&signature=h-XKwohAk6uAA5O5hcMmYE3cEV4=", alt: "UCD Properties"
  end

end
