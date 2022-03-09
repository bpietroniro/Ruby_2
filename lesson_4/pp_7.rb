# Create a hash that expresses the frequency with which each letter
# occurs in this string:

statement = "The Flintstones Rock"

frequencies = Hash.new(0)
statement.delete(' ').chars.each { |letter| frequencies[letter] += 1 }

puts frequencies

