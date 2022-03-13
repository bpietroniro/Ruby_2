# Given this data structure, return a new array of the same structure but
# with the sub arrays being ordered (alphabetically or numerically as
# appropriate) in descending order.
#
# - iterate through arr
# - for each sub-array, determine how to sort
#   - if ints, just normally (based on numeric value)
#   - if strings, sort based on character comparison
# - sort the sub-array and return it to be used in place of its original version
#   in a new array
# - return that new array

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_arr = arr.map do |subarr|
  subarr.sort do |a, b|
    b <=> a
  end
end

p new_arr
