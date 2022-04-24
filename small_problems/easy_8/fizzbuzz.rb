=begin

PROBLEM
Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by both 3 and 5, print "FizzBuzz".

EXAMPLE
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

IDEAS
- first check for divisibility by 15
- then check for divisibility by 5
- then for divisibility by 3

ALGORITHM
- iterate through the numbers from input1 through input2, inclusive
  - if current number is divisible by 15, print "FizzBuzz"
  - else if current number is divisible by 5, print "Buzz"
  - else if current number is divisible by 3, print "Fizz"
  - otherwise print the current number itself

=end

def fizzbuzz(firstnum, lastnum)
  outputs = []
  (firstnum..lastnum).each do |n|
    outputs << case
      when n % 15 == 0 then "FizzBuzz"
      when n % 5 == 0 then "Buzz"
      when n % 3 == 0 then "Fizz"
      else n
    end
  end
  puts outputs.join(', ')
end

fizzbuzz(1, 15)
