=begin

PROBLEM
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

Input: two Arrays
Output: one Array

IDEAS
Method 1: nested iteration
- initialize empty output array
- iterate through first input array
  - iterate through second input array
    - append the product of the current element from `first` and the current element from `second` to output array
- return output array

Method 2:
method hunt :)

=end

def multiply_all_pairs(first, second)
  (first.each_with_object([]) do |firstnum, output|
    second.each { |secondnum| output << firstnum * secondnum }
  end).sort
end

def multiply_all_pairs_2(first, second)
  first.product(second).map { |numpair| numpair[0] * numpair[1] }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
p multiply_all_pairs_2([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
