=begin

PROBLEM
Given the following data structure, use a combination of methods, including
either the select or reject method, to return a new array identical in 
structure to the original but containing only the integers that are 
multiples of 3.

input: array of arrays
output: array of arrays

ALGORITHM
- create a new empty output array
- iterate through input array
  - create a new empty sub-array (that will replace current sub-array
    in the returned array)
  - iterate through the current sub-array
    - check each element for divisibility by 3
    - if divisible by 3, append the element to the new sub-array
  - add the new sub-array to the output array
- return the output array

=end

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = arr.map do |sub_arr|
  sub_arr.select { |element| element % 3 == 0 }
end

p arr
p new_arr

