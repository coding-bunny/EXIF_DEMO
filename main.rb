require 'exif'
require_relative './lib/location'

data = ::Exif::Data.new(::File.open('example.jpg'))

puts 'Camera/Device Information'
puts "Model: #{data.model}"
puts "Battery level: #{data.battery_level}"
puts "Device Settings: #{data.device_setting_description}"
puts "Flash: #{data.flash}"
puts "Flash Energy: #{data.flash_energy}"
puts "Flash Pix Version: #{data.flash_pix_version}"
puts "Software: #{data.software}"
puts "Author: #{data.xp_author}"
puts "Comment: #{data.xp_comment}"
puts "Keywords: #{data.xp_keywords}"
puts "Subject: #{data.xp_subject}"
puts "Title: #{data.xp_title}"

puts "\nGPS Information"
puts "Altitude: #{data.gps_altitude}"
puts "Altitude Ref: #{data.gps_altitude_ref}"
puts "Area Information: #{data.gps_area_information}"
puts "Date Stamp: #{data.gps_date_stamp}"
puts "Destination Bearing: #{data.gps_dest_bearing}"
puts "Destination Bearing Ref: #{data.gps_dest_bearing_ref}"
puts "Destination Distance: #{data.gps_dest_distance}"
puts "Destination Distance Ref: #{data.gps_dest_distance_ref}"
puts "Destination Latitude: #{data.gps_dest_latitude}"
puts "Destination Latitude Ref: #{data.gps_dest_latitude_ref}"
puts "Destination Longitude: #{data.gps_dest_longitude}"
puts "Destination Longitude Ref: #{data.gps_dest_longitude_ref}"
puts "Differential: #{data.gps_differential}"
puts "DOP: #{data.gps_dop}"
puts "Image Direction: #{data.gps_img_direction}"
puts "Image Direction Ref: #{data.gps_img_direction_ref}"
puts "IFD Pointer: #{data.gps_info_ifd_pointer}"
puts "Latitude: #{data.gps_latitude}"
puts "Latitude Ref: #{data.gps_latitude_ref}"
puts "Longitude: #{data.gps_longitude}"
puts "Longitude Ref: #{data.gps_longitude_ref}"
puts "Map Datum: #{data.gps_map_datum}"
puts "Measure Mode: #{data.gps_measure_mode}"
puts "Processing Mode: #{data.gps_processing_method}"
puts "Satellites: #{data.gps_satellites}"
puts "Speed: #{data.gps_speed}"
puts "Speed Ref: #{data.gps_speed_ref}"
puts "Status: #{data.gps_status}"
puts "Timestamp: #{data.gps_time_stamp}"
puts "Track: #{data.gps_track}"
puts "Track Ref: #{data.gps_track_ref}"
puts "Version ID: #{data.gps_version_id}"

# Calculate positions
photo_lat = data.gps_latitude[0] + (data.gps_latitude[1] / 60 rescue 0.0) + (data.gps_latitude[2] / 3600 rescue 0.0)
photo_lng = data.gps_longitude[0] + (data.gps_longitude[1] / 60 rescue 0.0) + (data.gps_longitude[2] / 3600 rescue 0.0)
photo_location = Location.new(latitude: photo_lat, longitude: photo_lng)
prague_location = Location.new(latitude: 50.08804, longitude: 14.42076)

puts "In Prague? #{prague_location.in_range?(radius: 100, location: photo_location)}"
# EXIFR
require 'exifr/jpeg'
exifr = EXIFR::JPEG.new('example.jpg')
puts "\n EXIFR"
puts "Latitude: #{exifr.gps.latitude}"
puts "Longitude: #{exifr.gps.longitude}"
puts "In Prague? #{prague_location.in_range?(radius: 100, location: Location.new(latitude: exifr.gps.latitude, longitude: exifr.gps.longitude))}"