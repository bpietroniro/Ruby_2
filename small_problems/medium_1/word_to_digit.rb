=begin

PROBLEM
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

input: string
output: string

(example below)

- replace number words with their digit equivalents

QUESTIONS
- case sensitive? will all number words be lowercase?

DATA STRUCTURE
- probably useful to have a hash with the number words as keys and their corresponding digits as values
- probably also useful to split the input string into an array of words

ALGORITHM
- create a hash linking words to their digit equivalents
- split the input string into an array of words (separator: space) and store in a variable called words_array
TODO: get rid of pesky punctuation
- initialize empty array words_and_digits
- iterate through words_array
  - create a version of the current element stripped of any punctuation
  - if the resulting string is a hash key, add its value to words_and_digits
  - otherwise, add the current element to words_and_digits
- join words_and_digits with a space and return

LET'S TRY THIS AGAIN
- create that hash
- create a copy of the input string
- iterate through the hash
  - substitute any instance of the current key in the input string copy with its value
- return input string

=end

=begin first try
def word_to_digit(str)
  number_words = { "one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5", 
                   "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9", "zero" => "0" }
  words_array = str.split(" ")

  words_array.map! do |word|
    number_words.key?(word) ? number_words[word] : word
  end

  p words_array.join(" ")
end
=end first try

def word_to_digit(str)
  number_words = { "one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5", 
                   "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9", "zero" => "0" }
  output = str

  number_words.each do |word, digit|
    output.gsub!(/\b#{word}\b/, digit)
  end

  output
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
