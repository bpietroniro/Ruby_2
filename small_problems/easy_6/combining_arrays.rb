=begin

PROBLEM
Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

EXAMPLE
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

DATA STRUCTURES
I don't anticipate needing anything other than an output array.

ALGORITHM
- initialize output array
- iterate through first input array
  - add each element of current array to output array 
- iterate through second array
  - add each element of current array to output array UNLESS output array already contains it
- return output array

OR...

- initialize output array
- iterate through [first input array, second input array]
  - iterate through current array
    - add each element of current array to output array
- remove duplicates from output array and return it

=end


def merge_1(arr1, arr2)
  output = arr1.clone
  arr2.each { |e| output << e unless output.include?(e) }
  output
end

def merge_2(arr1, arr2)
  (arr1 + arr2).uniq
end


p merge_1([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge_2([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
