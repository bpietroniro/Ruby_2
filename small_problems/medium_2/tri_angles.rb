=begin

A triangle is classified as follows:

right: One angle of the triangle is a right angle (90 degrees)
acute: All 3 angles of the triangle are less than 90 degrees
obtuse: One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

(examples below)

DATA
input: 3 integers (angles in degrees)
output: symbol
intermediary: put the angle measures in an array

ALGORITHM
- store the three inputs in an array "angles"
- if the sum of the elements in the array is not 180, or 0 is an element, return :invalid
- if 90 is an element of the array, return :right
- if all of the elements are less than 90, return :acute
- else return :obtuse

=end

def triangle(angle1, angle2, angle3)
  angle_measures = [angle1, angle2, angle3]
  case
  # note: could also write this as angle_measures.sum !- 180, angle_measures.include?(0)
  when angle_measures.sum != 180 || angle_measures.include?(0)
    :invalid
  when angle_measures.include?(90)
    :right
  when angle_measures.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
