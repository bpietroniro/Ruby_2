print "What is your age? "
age = gets.to_i

print "At what age would you like to retire? "
retirement_age = gets.to_i

this_year = Time.now.year
years_left = retirement_age - age
puts "It's #{this_year}. You will retire in #{this_year + years_left}."
puts "You only have #{years_left} years to go!"
