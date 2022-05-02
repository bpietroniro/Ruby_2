=begin

PROBLEM
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

EXAMPLES

diamond(1)

*

diamond(3)

 *
***
 *

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

- middle line consists of n stars
- "middle" is index n / 2
- middle index of each line always has a star
- up to middle line, each successive line has 2 more stars than the last
- after middle line, each successive line has 2 fewer stars than the last

DATA
- possibly an array of strings to build before printing out, but might not be necessary

IDEAS
- useful to have an easy way to "pad" characters on both sides with spaces
  - some use of String#format ?
  - if not, each line's string consists of n - (2 * line + 1) spaces (if line starts counting from 0), followed by (2 * line + 1) stars, followed again by n - (2 * line + 1) spaces
- so we need to iterate from 0 to n - 1 for the lines
  - padding: n - (2 * line + 1) spaces
  - stars: 2 * line + 1

ALGORITHM
- initialize empty array (we'll add the line strings to it as we go)
- from 0 up to n / 2:
  - set stars equal to 2 * line + 1
  - set padding equal to (n - stars) / 2
  - build current line string: padding * ' ', stars * '*', padding * ' '
  - append current line string to array
- append array[..-1], reversed, to array
- iterate through array, printing out each line

=end

def diamonds(n)
  lines = []
  (0..n / 2).each do |line_num|
    stars = 2 * line_num + 1
    padding = (n - stars) / 2
    current_line = (" " * padding) + ("*" * stars) + (" " * padding)
    lines << current_line
  end

  lines << lines[...-1].reverse
  lines.each { |line| puts line }
  puts "\n"
end

diamonds(1)
diamonds(3)
diamonds(5)
diamonds(7)
diamonds(9)
diamonds(11)
diamonds(13)
