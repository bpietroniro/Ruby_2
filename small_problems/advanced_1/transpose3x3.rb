=begin

Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix. Note that there is a Array#transpose method that does this -- you may not use it for this exercise. You also are not allowed to use the Matrix class from the standard library. Your task is to do this yourself.

PROBLEM
- take the first element from the input array
  - make each element of this sub-array the first element of each of three new arrays
- take the second element from the input array
  - make each element of this sub-array the second element of each of the three new arrays
- do the same with the third element of the input array

DATA
input: array of three 3-element arrays
output: same

ALGORITHM
- initialize a new array with three empty arrays as elements
- iterate through input array
  - index = 0
  - loop:
    - push the element at index in the current sub-array to the element at index in the output array
    - increment index
    - break when index == 3
- return output array

=end

def transpose(m)
  transposed = [[], [], []]
  m.each do |sub_array|
    0.upto(2) { |index| transposed[index] << (sub_array[index]) }    
  end
  transposed
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

=begin
for the destructive version:
- set variable i to iterate from 0 through 2
  - set variable j to iterate from 0 through 2
    - switch elements at [i][j] and [j][i]
=end

def transpose!(m)
  0.upto(2) do |i|
    0.upto(2) do |j|

    end
  end
  p m
end

transpose!(matrix)
