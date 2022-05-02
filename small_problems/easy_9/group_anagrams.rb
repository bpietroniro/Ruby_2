require 'pry-byebug'

=begin

PROBLEM
Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

DATA STRUCTURE
I'm going to try this using a hash. The keys will be symbols of sorted letters (the result of splitting each word into a char array, sorting the chars in alphabetical order, and converting to a symbol). The values will be arrays of words that generated this symbol.

ALGORITHM
- initialize empty hash with default value of an empty array
- iterate through input array
  - split current word into array of chars
  - sort the array
  - convert the array into a symbol
  - append current word to the value in the hash referenced by this symbol
- iterate through the hash values
  - print out each array's string representation

=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

def print_anagram_groups(wordlist)
  groups = {}

  wordlist.each do |word|
    letters = word.chars.sort.join.to_sym
    if groups.has_key?(letters)
      groups[letters] << word
    else
      groups[letters] = [word]
    # binding.pry
    end
  end
   
  groups.values.each { |group| p group }
end

print_anagram_groups(words)
