=begin

PROBLEM
- Write a method that takes one argument, a string containing one or more
words, and returns the given string with words that contain five or more
characters reversed. 
- Each string will consist of only letters and spaces.
- Spaces should be included only when more than one word is present.

EXAMPLES
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

DATA STRUCTURES
Splitting the input string into an array of words will be helpful.

ALGORITHM
- split input string into array of words
- iterate through the array using Array#map!
  - if the length is < 5, leave it unchanged
  - elsif length >= 5, reverse the word
- return the array 

=end

def reverse_words(sentence)
  words = sentence.split(' ')
  words.map! { |word| word.length < 5 ? word : word.reverse }
  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

