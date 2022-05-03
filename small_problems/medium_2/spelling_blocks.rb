=begin

A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

(examples below)

- a valid word will have no repeat letters
- case insensitive

IDEAS/DATA STRUCTURES
- one approach is to create a nested array where each element is a letter block pair
  - as soon as a letter from a block is found in the input string, delete that pair from the array
- another approach is to create a hash where letter pairs are linked as key/value pairs
  - two possibilities: make one hash entry for each pair, or make two hash entries for each pair (going opposite directions)
  - as soon as a letter from a block is found in the input string, delete that key/value pair (or both key/value pairs) from the hash

ALGORITHM
- build a hash with each block pair represented by two key/value pairs (use capital letters)
- convert input string to uppercase
- split the input string into array of chars
- iterate through the char array
  - if the current character is a key in the hash:
    - delete the entry with its value as a key
    - delete the entry with the current key
  - if not:
    - return false
- return true

=end

def block_word?(word)
  blocks = { 'B' => 'O', 'O' => 'B', 'G' => 'T', 'T' => 'G', 'V' => 'I', 'I' => 'V',
             'X' => 'K', 'K' => 'X', 'R' => 'E', 'E' => 'R', 'L' => 'Y', 'Y' => 'L',
             'D' => 'Q', 'Q' => 'D', 'F' => 'S', 'S' => 'F', 'Z' => 'M', 'M' => 'Z',
             'C' => 'P', 'P' => 'C', 'J' => 'W', 'W' => 'J', 'N' => 'A', 'A' => 'N',
             'H' => 'U', 'U' => 'H' }
  chars = word.upcase.chars

  chars.each do |letter|
    if blocks.key?(letter)
      blocks.delete(blocks[letter])
      blocks.delete(letter)
    else return false
    end
  end

  true
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
