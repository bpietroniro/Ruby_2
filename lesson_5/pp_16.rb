=begin

A UUID is a type of identifier often used as a way to uniquely identify items...which may not all be created by the same system. That is, without any form of synchronization, two or more separate computer systems can create new items and label them with a UUID with no significant chance of stepping on each other's toes.

It accomplishes this feat through massive randomization. The number of possible UUID values is approximately 3.4 X 10E38.

Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.

It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

Write a method that returns one UUID when called with no parameters.

- input: none
- output: string

Rules:
- In the output string, there should be a "-" after:
  - the 8th alphanumeric 
  - the 12th alphanumeric
  - the 16th alphanumeric
  - the 20th alphanumeric

Questions:
- Is 0 a valid character?
- The example seems to imply that only lowercase letters are used; is that true?
Answers (via Wikipedia):
- hexadecimal characters include 0-9 and a-f.

ALGORITHM
- initialize an empty output string
- initalize a counter variable to  0 (this will track the number of chars generated)
- while counter <= 32:
  - generate a random character
  - append the random character to the output string
  - increment counter
  - if counter equals 8, 12, 16, or 20:
    - append "-" to the output string
- return the output string

=end

def generate_uuid
  new_uuid = ''
  counter = 0
  hexchars = '0123456789abcdef'.chars

  while counter <= 32
    new_uuid << hexchars.sample
    counter += 1
    new_uuid << '_' if [8, 12, 16, 20].include?(counter)
  end

  new_uuid
end

3.times { puts generate_uuid }
