=begin

PROBLEM
Write a method that determines and returns the ASCII string value of a
string that is passed in as an argument. The ASCII string value is the
sum of the ASCII values of every character in the string. (You may use
String#ord to determine the ASCII value of a character.)

(examples below)

DATA STRUCTURE
- an integer to hold the sum of the ASCII values
- probably convert the input string to an array for iteration

ALGORITHM
- initialize output variable sum = 0
- split the string into an array of characters
- iterate over the char array
  - find current element's ASCII value
  - add the value to sum
- return sum

=end

def ascii_value(string)
  string.chars.reduce(0) { |sum, char| sum + char.ord }
end


puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
