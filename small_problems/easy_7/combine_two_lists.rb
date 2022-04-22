=begin

PROBLEM
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

EXAMPLE:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

ALGORITHM
- set index = 0
- initialize empty output array
- until index == length of arguments
  - append arg1[index] to output
  - append arg2[index] to output
  - increment index by 1
return output

=end

def interleave(arr1, arr2)
  (0..(arr1.length - 1)).each_with_object([]) do |index, output|
    output << arr1[index]
    output << arr2[index]
  end
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


# further exploration
def interleave_zip(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave_zip([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
