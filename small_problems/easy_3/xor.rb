=begin

PROBLEM
Write a function that takes two arguments and returns true if exactly one of 
its arguments is truthy, false otherwise. Note that we are looking for a
boolean result instead of a truthy/falsy value as returned by || and &&.

input: two arguments, could be any type
output: boolean

1st input | 2nd input | return
truthy    | falsy     | true
falsy     | truthy    | true
truthy    | truthy    | false
falsy     | falsy     | false

ALGORITHM
- this is short enough to hardcode the possibilities into a conditional
- perhaps a case statement
- if (1st && 2nd): return false
- elsif !1st && !2nd: return false
- else return true

=end

def xor?(first, second)
  return false if (first && second) || (!first && !second)
  true
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
