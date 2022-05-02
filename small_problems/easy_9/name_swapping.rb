=begin

PROBLEM
Write a method that takes a first name, a space, and a last name passed as a string String argument, and returns a string that contains the last name, a comma, a space, and the first name.

EXAMPLE
swap_name('Joe Roberts') == 'Roberts, Joe'

DATA STRUCTURE
Splitting the string temporarily into an array will be helpful.

ALGORITHM
- split input string into array (use space as separator)
- reverse the array
- join the array into a string with ", " as a separator and return

=end

def swap_name(name_str)
  name_str.split(' ').reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
