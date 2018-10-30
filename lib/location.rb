# Location
#
# Simple class representing a location on the world using latitude and longitude.
#
class Location
  attr_accessor :latitude, :longitude

  def initialize(longitude:, latitude:)
    @longitude = longitude
    @latitude = latitude
  end

  # Rough calculation to determine whether a given point is in range of another.
  def in_range?(radius:, location:)
    (((location.latitude - @latitude) ** 2) + ((location.longitude - @longitude) ** 2)) < (radius ** 2)
  end
end
