=begin

PROBLEM
Write a method that will take a short line of text, and print it within a box.

EXAMPLES

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

DATA STRUCTURES
- we'll want to save the length of the input string as a constant, probably

BRAINSTORMING
- top and bottom of banner (1st and 5th lines):
  '+', '-' * (input length + 2), '+'
- 2nd and 4th lines:
  '|', ' ' * (input length + 2), '|'
- 3rd (middle) line:
  '| ', input, ' |'

ALGORITHM
- define a constant to represent the top and bottom borders as noted above
- define another constant to represent the "buffer" lines as noted above
- define a third constant for the middle line
- call puts on each of these string constants in the appropriate order

=end 
  
def print_in_box(message)
  border = '+' + '-' * (message.length + 2) + '+'
  buffer = '|' + ' ' * (message.length + 2) + '|'
  middle = '| ' + message + ' |'

  puts border, buffer, middle, buffer, border
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

