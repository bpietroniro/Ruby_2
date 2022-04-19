=begin

PROBLEM
Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use `String#squeeze` or `String#squeeze!`.

EXAMPLES
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

SCRATCHWORK
We want to iterate through the string, and each time we move to the next character, we want to know whether or not it's the same as the character right before it. 
If so, we move on. If not, we add it to the intended output.

DATA STRUCTURE
- building an output string
- split input into array of chars for iteration
- we need a temp string to store the previous character

ALGORITHM
- initialize empty output string
- initialize empty string `previous`
- split input into array of chars and iterate over it
  - next if current == previous
  - else append current to output
  - previous = current
- return output

=end

=begin
def crunch(string)
  output = ''
  previous_char = ''

  string.each_char do |char|
    next if char == previous_char
    output << char
    previous_char = char
  end

  output
end
=end

# version without temp string:

def crunch(string)
  output = ''

  string.each_char do |char|
    next if char == output[-1]
    output << char
  end

  output
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
