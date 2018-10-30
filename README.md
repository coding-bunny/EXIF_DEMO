# Demonstration on EXIF data
## Requirements
* `brew install libexif`
* `ruby 2.5.1`
* `bundler`
## Purpose
Demonstrate the possibilities of EXIF in images.
Original intent was to see what is possible and whether we can use this information to
determine if a picture is actually taken from camera or not.

# Output
```ruby
Camera/Device Information
Model: D6603
Battery level: 
Device Settings: 
Flash: 16
Flash Energy: 
Flash Pix Version: 0100
Software: 23.5.A.1.291_6_f1000010
Author: 
Comment: 
Keywords: 
Subject: 
Title: 

GPS Information
Altitude: 0/1
Altitude Ref: 0
Area Information: 
Date Stamp: 2018:10:30
Destination Bearing: 
Destination Bearing Ref: 
Destination Distance: 
Destination Distance Ref: 
Destination Latitude: 
Destination Latitude Ref: 
Destination Longitude: 
Destination Longitude Ref: 
Differential: 
DOP: 
Image Direction: 
Image Direction Ref: 
IFD Pointer: 
Latitude: [(50/1), (5/1), (11159/200)]
Latitude Ref: N
Longitude: [(14/1), (23/1), (27557/500)]
Longitude Ref: E
Map Datum: WGS-84
Measure Mode: 
Processing Mode: 
Satellites: 
Speed: 
Speed Ref: 
Status: A
Timestamp: [(13/1), (33/1), (18/1)]
Track: 
Track Ref: 
Version ID: [2, 2, 0, 0]
In Prague? true

 EXIFR
Latitude: 50.09883194444445
Longitude: 14.398642777777779
In Prague? true

```