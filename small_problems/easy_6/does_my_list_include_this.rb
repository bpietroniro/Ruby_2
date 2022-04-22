=begin

PROBLEM
Write a method named `include?` that takes an Array and a search value as arguments. This method should return `true` if the search value is in the array, `false` if not. You may not use the `Array#include?` method in your solution.

(examples below)

ALGORITHM
- iterate through the input array
  - return true if current element matches second argument
- return false (if we haven't returned true)

=end

def include?(arr, value)
  arr.each { |element| return true if element == value }
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
