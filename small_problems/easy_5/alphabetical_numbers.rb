=begin

PROBLEM
Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

EXAMPLES
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

DATA STRUCTURE
- an array will do for storing the number words (indexes can correspond to their words)

ALGORITHM
- initialize constant array containing all number words
- sort the input array based on the value at index `num` in the constant array
- return sorted array

=end

NUMBER_WORDS = [
    'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
    'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
    'sixteen', 'seventeen', 'eighteen', 'nineteen'
  ]

#def alphabetic_number_sort(num_arr)
#  num_arr.sort_by { |num| NUMBER_WORDS[num] }
#end

#OR

def alphabetic_number_sort(num_arr)
  num_arr.sort { |num1, num2| NUMBER_WORDS[num1] <=> NUMBER_WORDS[num2] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
