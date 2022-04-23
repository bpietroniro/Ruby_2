=begin

PROBLEM
Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

(examples below)

IDEAS
This could be very similar to the previous exercise, only instead of toggling by index, use a counter to keep track of alpha characters.

ALGORITHM
- initialize boolean "upper" with value `true`
- initialize empty output string
- split input into char array and iterate
  - if the current char is non-alpha, append it to output string
  - otherwise:
    - if `upper`, append uppercase version of char to output; otherwise append lowercase version
    - reassign `upper` to `!upper`
- return output string

=end

def staggered_case(string)
  upper = true
  string.chars.each_with_object('') do |char, new_string|
    if char =~ /[^a-zA-Z]/
      new_string << char
    else
      new_string << (upper ? char.upcase : char.downcase)
      upper = !upper
    end
  end
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
