# Given the following data structure and without modifying the original
# array, use the map method to return a new array identical in structure
# to the original but where the value of each integer is incremented by 1.
#
# - don't modify the original array
# - new array should have same structure as original
# - wherever an integer appears in the original, its 
#   counterpart in the new array should be 1 greater
#
# input: array of hashes
# output: array of hashes
#
# ALGORITHM
# - create a new array to be filled 
# - iterate through the array
#   - create a new hash
#   - iterate through each original hash
#     - create a new hash entry with the same key but value incremented by 1
#     - add this entry to the new hash
#   - add the new hash to the new array
# - return the new array

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# cheating with a snazzy method I found
new_arr = arr.map do |hash|
  hash.transform_values { |value| value + 1 }
end

# using methods covered in lesson 4
new_arr = arr.map do |hash|
  hash.each_with_object({}) do |(key, value), new_hash|
    new_hash[key] = value + 1
  end
end

p "arr: #{arr}"
p "new_arr: #{new_arr}"
