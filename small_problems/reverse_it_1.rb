=begin

PROBLEM
Write a method that takes one argument, a string, and returns a new string
with the words in reverse order.

EXAMPLES
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

DATA STRUCTURE
One way to do this is to split the input string into an array of words, which
can then be reversed and concatenated back into a string.

ALGORITHM
- split input string into array of words
- map the array into a reversed array either by using an Array method or
  by doing it manually
  - if manually: iterate through the array starting from the last element and
    working backwards
  - map each element onto a new array, which will be the reverse of the original
  - initialize an empty output string
  - iterate through the reversed array from beginning to end, concatenating
    each element (word) to the output string
 - return the output string

=end

require 'pry'

def reverse_sentence(sentence)
  sentence.split(' ').reverse.join(' ')
end

def reverse_sentence_the_hard_way(sentence)
  words = sentence.split(' ')
  return '' if words.empty?
  reversed = []
  
  index = words.length - 1
  while index >= 0
    reversed << words[index]
    index -= 1
  end

  output = ''
  reversed.each do |word| 
    output += "#{word} "
  end
  output.strip
end


puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

puts reverse_sentence_the_hard_way('Hello World') == 'World Hello'
puts reverse_sentence_the_hard_way('Reverse these words') == 'words these Reverse'
puts reverse_sentence_the_hard_way('') == ''
puts reverse_sentence_the_hard_way('    ') == '' # Any number of spaces results in ''

