require 'pry-byebug'

=begin

PROBLEM
Modify the `word_sizes` method from the previous exercise to exclude non-letters when determining word size. For instance, the length of `it's` is 3, not 4.

EXAMPLES
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

This can be basically the same as the previous exercise, except instead of using `String#length`, we use `String#count` with arguments.

=end

def word_sizes(word_string)
  size_frequencies = Hash.new(0)

  word_string.split.each do |word|
    letter_count = word.count("a-zA-Z")
    size_frequencies[letter_count] += 1
  end

  size_frequencies
end




p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
