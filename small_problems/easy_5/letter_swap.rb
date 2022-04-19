=begin

PROBLEM
Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces.

(examples below)

DATA STRUCTURE
- will need to split the input string into an array of words to work with them

ALGORITHM
- split the input by blank spaces and save in an array `words`
- iterate through the array
  - define a temporary variable `first_letter`
  - destructively change the word so that the last letter is first
  - destructively change the word so that first_letter is last
- return the array

=end

def swap(string)
  words = string.split
  
  words.each do |word|
    first_letter = word[0]
    word[0] = word[-1]
    word[-1] = first_letter
  end

  words.join(" ")
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
