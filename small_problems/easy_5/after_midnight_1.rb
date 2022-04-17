=begin

PROBLEM

The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

You may not use Ruby's `Date` and `Time` classes.

(examples below)

SCRATCHWORK

- for positive numbers:
  - find out how many hours past midnight by floor dividing the input by 60
  - find out how many minutes past that hour by taking the input modulo 60
- for negative numbers:
  - add the input to 1440
  - perform the "positive numbers" operation on the result

ALGORITHM
- if the input is negative, add 1440 to it and store the result (actually not necessary because of the way `%` works)
- initialize a variable `hours` to the value `input / 60 % 24`
- initialize a variable `minutes` to the value `input % 60`
- return the string consisting of `hours` formatted to two characters with a buffer '0', ':', and `minutes` formatted the same way

=end

def time_of_day(num_of_minutes)
  hours = num_of_minutes / 60 % 24
  minutes = num_of_minutes % 60
  "%02d" % hours + ':' + "%02d" % minutes
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
