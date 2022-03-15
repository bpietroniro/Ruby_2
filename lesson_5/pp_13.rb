=begin

PROBLEM
Given the following data structure, return a new array containing the same
sub-arrays as the original but ordered logically by only taking into
consideration the odd numbers they contain.

Notes:
- by "ordered logically" we appear to mean "sorted"
- the <=> operator appears to sort arrays by comparing each element

The result should look like:
[[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

ALGORITHM
- create empty output array
- iterate through arr
  - associate each sub-array with a version of itself excluding even numbers
  - use this version for comparison with the other arrays
- sort the elements in arr according the the criterion above, and add them to the
  output array in that order
- return output array

=end

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

sorted_arr = arr.sort_by do |sub_arr|
  sub_arr.select { |num| num.odd? }
end

p arr
p sorted_arr
