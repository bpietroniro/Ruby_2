=begin

PROBLEM
A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument,  unless the argument is a double number; double numbers should be returned as-is.

(examples below)

IDEAS
We could do this with string methods, or with math. I'm feeling partial to math.
A "double number" will have the following properties:
  - its highest power of 10 will be odd
  - if you take its highest power of 10, add 1, and divide by 2 (call this "half power" 
    for now), then you see that taking the number modulo 10 to the half power equal to the 
    quotient after floor dividing by 10 to the half power.
    For example, the highest power of 10 in 103103 is 5. We add 1 and get 6, divide by 2 and get
    3. Then take 103103 modulo 10^3, which is 103. Then take 103103 / 1000, and it's also 103.
    This will work. Not asked for a proof so not providing one...
Now... how to find the highest power of 10? Here I'm going to get lazy and use strings.
The highest power of 10 plus 1 is equivalent to taking the length of the string version of the number.

ALGORITHM
- find the length of the string version of the input, call this "power"
- if the length is even, divide the power by 2
- check whether input % 10**power is equal to input / 10**power
  - if so, return input
- if we've gotten to this step, return input * 2

=end

def twice(num)
  power = num.to_s.length
  if power.even?
    power /= 2
    return num if num % 10**power == num / 10**power
  end
  num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
