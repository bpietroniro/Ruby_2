=begin

PROBLEM
Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

Numerical Score     Letter Grade
90 <= score <= 100	'A'
80 <= score < 90	  'B'
70 <= score < 80	  'C'
60 <= score < 70	  'D'
0 <= score < 60	    'F'

Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

(examples below)

DATA STRUCTURE
First I thought a hash would be handy, but I don't know how to handle keys that are ranges, so I'm going to stick with a case statement and no fancy data tricks.

ALGORITHM
- sum the three inputs, divide by 3.0, and store the result as `average`
- if average is between 90 and 100, return 'A'
- elsif average is between 80 and 89, return 'B'
- elsif average is between 70 and 79, return 'C'
- elsif average is between 60 and 69, return 'D'
- else return 'F'

=end

def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3)/3.0
  case average
  when (90..) then 'A'
  when (80...90) then 'B'
  when (70...80) then 'C'
  when (60...70) then 'D'
  else 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(100, 105, 103) == "A"
