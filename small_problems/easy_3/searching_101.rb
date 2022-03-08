=begin

PROBLEM
- get six numbers from the user
  - loop in a way that specifies which number we're on
    - will probably want an array of specifiers (1st, 2nd, 3rd, etc.)
  - store the first five numbers in an array
  - store the last number separately
- check whether the last number appears in the array of previous numbers
- tell the user whether or not it does

=end

specifiers = %w(1st 2nd 3rd 4th 5th)
counter = 0
numbers = []

until counter == 5
  puts "==> Enter the #{specifiers[counter]} number:"
  number << gets.to_i
  counter += 1
end

puts "==> Enter the last number:"
last = gets.to_i

if numbers.include?(last)
  puts "The number #{last} appears in #{numbers.to_s}."
else
  puts "The number #{last} does not appear in #{numbers.to_s}."
end

