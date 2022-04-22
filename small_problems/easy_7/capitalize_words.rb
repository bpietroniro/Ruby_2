=begin

PROBLEM
Write a single method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

(examples below)

DATA STRUCTURE
- we'll need to split the string into an array of words for iteration
- probably wind up building a new array of words and then joining them into a string

ALGORITHM
- initialize empty output array
- split input into array of words and iterate
  - for each word, create a new string that is the word capitalized
  - add the capitalized word to the output array
- join and return output array

=end

def word_cap(phrase)
  phrase.split(' ').map { |word| word.capitalize }.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


def word_cap_2(phrase)
  (phrase.split(' ').map! do |word|
    word[0].upcase + word[1..].downcase
  end).join(' ')
end

p word_cap_2('four score and seven') == 'Four Score And Seven'
p word_cap_2('the javaScript language') == 'The Javascript Language'
p word_cap_2('this is a "quoted" word') == 'This Is A "quoted" Word'
