=begin

PROBLEM
Given the following data structure, write some code to return an array
containing the colors of the fruits and the sizes of the vegetables.
The sizes should be uppercase and the colors should be capitalized.

input: hash
output: array

the output should look like:
[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

Rules:
- if the :type attribute in the current value hash is 'fruit', the output
  array should include its :colors attribute as an element
  - the elements in the :colors attribute should be capitalized in the output
- otherwise if the :type attribute in the current value hash is 'vegetable',
  the output array should include its :size attribute
  - the :size attribute should be in all caps in the output

ALGORITHM
- create a new empty output array
- iterate through hsh values
  - if value[:type] is 'fruit':
    - define a new array
    - iterate through value[:colors]
      - add capitalized versions of its elements to the new array
    - append this new array to the output array
  - otherwise if value[:type] is 'vegetable':
    - append all-caps version of value[:size] to the output array
- return the output array

=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

output = []
hsh.each_value do |value|
  if value[:type] == 'fruit'
    output << value[:colors].map(&:capitalize)
  elsif value[:type] == 'vegetable'
    output << value[:size].upcase
  end
end

p hsh
p output

