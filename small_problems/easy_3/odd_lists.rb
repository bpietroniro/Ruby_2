=begin

PROBLEM
Write a method that returns an Array that contains every other element of an
array that is passed in as an argument. The values in the returned list should
be those values that are in the 1st, 3rd, 5th, and so on elements of the
argument array.

input: array
output: array

(see examples below) 

ALGORITHM
This looks like a job for each_with_index.
(We could also use select with index_of, but that could create trouble with
duplicate elements maybe.)

- initialize empty output array
- iterate through the input array
- for each element, push it to the new array if its index is EVEN
- return the new array

=end

def oddities(array)
  output = []
  array.each_with_index { |element, i| output.push(element) if i.even? }
  output
end

# nuts and bolts version just for practice:
# def oddities(array)
#   output = []
#   counter = 0
# 
#   while counter < array.size
#     output.push(array[counter])
#     counter += 2
#   end
#   output
# end

# companion method for even indices
def evenities(array)
  return [] if array.size <= 1
  array.slice((1..).step(2))
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

puts evenities([2, 3, 4, 5, 6]) == [3, 5]
puts evenities([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
puts evenities(['abc', 'def']) == ['def']
puts evenities([123]) == []
puts evenities([]) == []
