=begin

PROBLEM
Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

(examples below)

DATA STRUCTURE
- we'll split the input string into an array of words

ALGORITHM
- split input string into an array of words (words are separated by spaces)
- return the element at index (arr.length - 2)

=end

def penultimate(words)
  words_array = words.split(' ')
  # not required here, but just in case
  return nil if words_array.empty? | words_array.size == 1
  words_array[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
p penultimate(' ') == nil
p penultimate('     ') == nil
p penultimate('one') == nil


# further exploration
=begin
Suppose we need a method that retrieves the middle word of a phrase/sentence. What edge cases need to be considered? How would you handle those edge cases without ignoring them? Write a method that returns the middle word of a phrase or sentence. It should handle all of the edge cases you thought of.

- if the sentence contains an even number of words, I guess we have to decide which of the two candidates to treat as the "middle word", or return both middle words, or return nil/empty string
- if the input is empty or contains only spaces, we should return nil
- if the input contains only one word, we should return that word

- for an array of words of length n (with n odd), the middle word can be found at index n/2
  - if n is even, we could decide to keep this rule, or we could make it index (n/2 - 1)
  - this means we don't have to handle the "single word" case separately, since 1 / 2  will round down to 0, which is the correct index for this case

ALGORITHM
- split input string into array of words
- return nil if the array is empty
- return the element of the array at index arr.length / 2

=end

def middle_word(phrase)
  words = phrase.split(' ')
  middle_index = words.size / 2

  return nil if words.empty?
  words.size.even? ? words[middle_index - 1, 2].join(' ') : words[middle_index]
end

p middle_word('you are my sunshine my only sunshine') == 'sunshine'
p middle_word('what are my goshdarned edge cases?')  == 'my goshdarned'
p middle_word('nonempty') == 'nonempty'
p middle_word('    ') == nil
