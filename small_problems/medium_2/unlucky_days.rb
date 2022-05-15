require 'date'

=begin

PROBLEM
Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

(examples below)

DATA
- we'll use Date objects
- a counter

ALGORITHM
- initialize a new date object: January 13, {year}
- initalize counter at 0
- loop:
  - if the date is a Friday, increment counter by 1
  - increment the month by 1
  - break when the month is greater than 12
- return counter

=end

def friday_13th(year)
  thirteenth = Date.new(year, 1, 13)
  count = 0

  12.times do
    if thirteenth.friday?
      count += 1
    end
    thirteenth = (thirteenth >> 1)
  end

  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2


# further exploration
def five_fridays(year)
  month_count = 0
  current = Date.civil(year, 1, 1)

  loop do
    num_of_fridays = 0
    
    loop do
      num_of_fridays += 1 if current.friday?
      current = current + 1
      break if current.day == 1
    end

    month_count += 1 if num_of_fridays == 5
    break if current.month == 1
  end

  month_count
end

=begin

- initialize month_count at 0
- initialize date object at January 1, {year}
- loop:
  - num_of_fridays = 0
  - loop:
    - if the current day is Friday, increment num_of_fridays by 1
    - go to the next day
    - break if day == 1
  - if num_of_fridays == 5, increment month_count
  - break if month == 1
- return month_count

=end

p five_fridays(2022)
p five_fridays(2020)
