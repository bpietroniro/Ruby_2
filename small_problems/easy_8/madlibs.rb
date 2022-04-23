=begin

Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

EXAMPLE
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

DATA STRUCTURE
- Perhaps a hash to store user input in a way that's associated with the parts of speech.
- A string to store the output.

ALGORITHM
- initialize word hash with the keys :noun, :verb, :adjective, :adverb, all with empty string values
- iterate over the hash
  - prompt the user with the current key
  - store the response as the current value
- build and output the madlib story with string interpolation

=end

def madlib
  words = { noun: nil, verb: nil, adjective: nil, adverb: nil }

  words.keys.each do |part_of_speech|
    puts "Enter a #{part_of_speech}: "
    words[part_of_speech] = gets.chomp
  end

  puts "When the #{words[:adjective]} #{words[:noun]} is in the west, #{words[:verb]} #{words[:adverb]}."
end

madlib
