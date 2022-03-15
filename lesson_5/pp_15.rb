=begin

PROBLEM
Given the following data structure, write some code to return an array which
contains only the hashes where all the integers are even.

- input: array
- output: array

Rules:
- include a hash in the output only if its value array contains all even integers

ALGORITHM
- create empty output array
- iterate through arr
  - iterate through each hash element
    - for each pair, look at the value array
      - if all the values are even, append the current value array to output
        (otherwise do nothing)
- return output array

=end

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hsh|
  hsh.
