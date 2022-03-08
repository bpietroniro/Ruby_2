=begin

PROBLEM
Write a program that will ask a user for an input of a word or multiple
words and give back the number of characters. Spaces should not be counted
as a character.

input: string from user
output: integer
rules:
  - spaces don't count
  - counting the total number of characters present in the string, NOT
    the number of unique characters

EXAMPLES
"walk" ==> 4
"walk, don't run" ==> 13

DATA STRUCTURE/ALGORITHM
- take in a string
- convert it to a string with no spaces
- count the number of characters in the no-space string

=end

print "Please type in a word or multiple words: "
input_string = gets.chomp

# note to self: LS solution uses String#delete which makes more sense
char_count = input_string.gsub(' ', '').length

puts 'There are ' + char_count.to_s + ' characters in "' + input_string + '".'
