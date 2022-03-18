=begin

PROBLEM
Write a method that takes a year as input and returns the century. The
return value should be a string that begins with the century number, and
ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000
comprise the 20th century.

input: integer
output: string

Rules:
- century numeral is determined by the first two digits (reading left to right)
  - EXCEPT: when the last two digits are 00
- suffixes work as follows:
  - if the century numeral ends with 4, 5, 6, 7, 8, 9, 0, 
    or is 11, 12, or 13: "th"
  - if the century numeral ends with 3: "rd"
  - if the century numeral ends with 2: "nd"
  - if the century numeral ends with 1: "st"

(see examples below)

ALGORITHM
1. Determine the century numeral from the input year
  - if year is divisible by 100, then the century is year / 100
  - otherwise, the century is (year / 100) + 1
2. Determine the suffix
  - if century % 100 is 11, 12, or 13:
    "th"
  - else if century % 10 is 1:
    "st"
  - else if century % 10 is 2:
    "nd"
  - else if century % 10 is 3:
    "rd"
  - else:
    "th"
3. Put them together
  - build output string by concatenating string representation of century with
    the appropriate suffix
  - return the output string

=end

def century(year)
  century_number = (year % 100 == 0) ? (year / 100) : (year / 100 + 1)
  last_digit = century_number % 10
  suffix = if (11..13).include?(century_number % 100)
            'th'
          elsif last_digit == 1
            "st"
          elsif last_digit == 2
            "nd"
          elsif last_digit == 3
            "rd"
          else
            "th"
          end
  century_number.to_s + suffix
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
