=begin

PROBLEM
Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle the diagonal side in the images below) should have one end at the lower left of the triangle, and the other end at the upper right.

EXAMPLES

triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

IDEAS
- the Kth row should have N-K spaces followed by K stars

ALGORITHM
- row_number = 1
- loop:
  - output (n - counter) spaces followed by (row_number) stars
  - increment counter by 1
  - stop when counter > n

=end

def triangle(n)
  (1..n).each do |row_num|
    puts " " * (n - row_num) + "*" * row_num
  end
end

triangle(5)
triangle(9)
