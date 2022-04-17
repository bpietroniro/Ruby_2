=begin

PROBLEM
Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range `0..1439`.

You may not use Ruby's `Date` and `Time` methods.

(examples below)

SCRATCHWORK

after midnight:
60 * first two chars cast to int modulo 24, plus last two chars cast to int

before midnight:
1400 - after midnight

=end

def after_midnight(time)
  sum_from_hour = time[0..1].to_i % 24 * 60
  sum_from_minutes = time[3..4].to_i
  sum_from_hour + sum_from_minutes
end

def before_midnight(time)
  sum_from_hour = (24 - time[0..1].to_i) % 24
  sum_from_minutes = time[3..4].to_i
  sum_from_hour * 60 - sum_from_minutes
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
puts after_midnight('13:40') == 820
puts before_midnight('13:40') == 620
