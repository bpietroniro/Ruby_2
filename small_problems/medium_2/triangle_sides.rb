=begin

A triangle is classified as follows:

equilateral: All 3 sides are of equal length
isosceles: 2 sides are of equal length, while the 3rd is different
scalene: All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

(examples below)

input: 3 numbers
output: symbol

ALGORITHM
- store the three inputs in an array and sort it
- if the last element of the array is greater than or equal to the sum of the first two elements of the array, or if any of the elements is 0, return :invalid
- if all elements are the same, return :equilateral
- else if two elements are the same, return :isosceles
- else return :scalene

=end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort
  case
  when sides.last >= sides[...-1].sum
    :invalid
  when sides.uniq.size == 1
    :equilateral
  when sides.uniq.size == 2
    :isosceles
  else
    :scalene
  end
end



p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
