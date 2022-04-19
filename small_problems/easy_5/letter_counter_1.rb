=begin

PROBLEM
Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that does not include a space.

EXAMPLES
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

DATA STRUCTURES
- will need to return a hash
- will need to split the input into an array of words

ALGORITHM
- initialize output hash with a default value of 0
- split input string into array of words and iterate through the array
  - find the length of the word
  - increment the value referenced by the word_length key by 1 in the hash
- return the hash

=end

def word_sizes(string)
  size_frequencies = Hash.new(0)

  string.split.each do |word|
    size_frequencies[word.length] += 1
  end

  size_frequencies
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
