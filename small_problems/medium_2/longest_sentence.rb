=begin

PROBLEM

Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

(example below)

DATA
- we need to split the text into an array with ".", "?", and "!" as separators
- then we'll need to split each element with space as separator in order to count words

IDEAS
- split text into array of sentences
- map the array of sentences to an array of sentence lengths
  - do this by iterating through the sentence array, splitting each element into words, and counting how many elements there are in the result
- find the maximum element in the lengths array and get the index of that element
- print the element in the sentence array at that index
- print the element in the lengths array at that index

ALGORITHM
- split text into array of sentences (call this "sentences")
- initialize empty array "sentence_lengths"
- iterate through sentences
  - split current element into array of words
  - add the size of the words array to sentence_lengths
- find the max value in sentence_lengths and get its index
- print sentences[index]
- print sentence_lengths[index]

=end

def longest_sentence(txt)
  sentences = txt.split(/\.|\?|!/)
  sentence_lengths = sentences.map { |sentence| sentence.split(' ').size }
  index_of_longest = sentence_lengths.index(sentence_lengths.max)
  puts "Longest sentence: \n #{sentences[index_of_longest]}"
  puts "This sentence is #{sentence_lengths[index_of_longest]} words long."
end


text = "Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth."

longest_sentence(text)
