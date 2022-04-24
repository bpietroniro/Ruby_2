=begin

PROBLEM
Create a method that takes two arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, `:title` and `:occupation`, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

EXAMPLE
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

ALGORITHM
- build greeting string with interpolation:
  - the elements of the name array joined together with a space as separator
  - each value from the info hash accessed via their keys
- return the greeting

=end

def greetings(name, info)
  "Hello, #{name.join(' ')}! Nice to have a #{info[:title]} #{info[:occupation]} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
