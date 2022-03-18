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
- 1. iterate through arr
  - 2. iterate through each hash
    - if any value in the values array is odd, skip to the next hash
    - otherwise append the current hash to the output array
TODO: get help writing better pseudocode for this problem
=end

arr = [
  {a: [1, 2, 3]}, 
  {b: [2, 4, 6], c: [3, 6], d: [4]}, 
  {e: [8], f: [6, 10]}
]
# should return [{e: [8], f: [6, 10]]

# this was my first attempt; for some reason I got squeamish about using select
new_arr = []
arr.each do |hsh|
  if (hsh.all? do |_, num_array|
    num_array.all? do |num|
      num.even?
    end
  end)
    new_arr << hsh
  end
end

# here's my second attempt after reading the LS solution
new_arr = (arr.select do |hsh|
  hsh.all? do |_, num_array|
    num_array.all? { |num| num.even? }
  end
end)

p new_arr
