METERS_TO_FEET_RATIO = 10.7639

puts "Enter the length of the room in meters:"
length = gets.to_f

puts "Enter the width of the room in meters:"
width = gets.to_f

area_meters = length * width
area_feet = area_meters * METERS_TO_FEET_RATIO
puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)."

