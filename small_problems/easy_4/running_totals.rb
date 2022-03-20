=begin

Write a method that takes an Array of numbers, and returns an Array with the
same number of elements, where each element has the running total from the
original Array.

(examples below)

- the element at index i in the new array is the sum of the elements at
  indices 1 through i (inclusive) in the old array

ALGORITHM
- initialize a working sum variable
- iterate through the old array
  - add each element to the working sum
  - push the working sum to the new array
- return the new array

=end

def running_total(arr)
  current_sum = 0
  arr.each_with_object([]) do |num, new_arr|
    new_arr << current_sum += num
  end
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
