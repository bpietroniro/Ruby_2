=begin

PROBLEM
Order the array of number strings by descending numeric value.

ALGORITHM
- associate each element with its integer counterpart
- sort the array based on comparison between these integers

=end

arr = ['10', '11', '9', '7', '8']
puts arr.sort { |a, b| b.to_i <=> a.to_i }

puts arr.sort_by { |element| -element.to_i }

