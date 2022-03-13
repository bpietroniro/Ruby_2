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
  - EXCEPT: when the last two digits are

=end




puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
