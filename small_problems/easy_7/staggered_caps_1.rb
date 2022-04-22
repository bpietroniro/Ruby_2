=begin

PROBLEM
Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

(examples below)

- characters at even indices should be uppercase; characters at odd indices should be lowercase

ALGORITHM
- initialize empty output string
- split input string into char array and iterate
  - if current char is non-alpha, add it to output
  - else if index of current char is even, add uppercased version of char to output
  - else add lowercased version of char to output
- return output string

=end

def staggered_case(string)
  new_string = ''

  string.split('').each_with_index do |char, index|
    if char =~ [/^a-zA-Z/]
      new_string << char
    elsif index.even?
      new_string << char.upcase
    else
      new_string << char.downcase
    end
  end

  new_string
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'




# further exploration
def staggered_case_extra(string, toggle=true)
  result = ''
  need_upper = toggle
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end


p staggered_case_extra('I Love Launch School!', false) == 'i lOvE LaUnCh sChOoL!'
p staggered_case_extra('ALL_CAPS', false) == 'aLl_cApS'
p staggered_case_extra('ignore 77 the 444 numbers', false) == 'iGnOrE 77 tHe 444 nUmBeRs'
p staggered_case_extra('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case_extra('ALL_CAPS') == 'AlL_CaPs'
p staggered_case_extra('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
