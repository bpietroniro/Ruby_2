=begin
PROBLEM
Write a program that will ask for the user's name. The program will then
greet the user. If the user writes "name!" then the computer yells back
to the user.

input: string from user
output: printed string
rules:
  - if the user's name doesn't conclude with a "!", just say "Hello {name}"
  - if there is an exclamation point, the response should be in all caps

ALGORITHM
- get user's name
- use a conditional to determine which response
  - if the last character of user input is "!", else
- print response
=end

print "What is your name? "
name = gets.chomp
yell = "HELLO #{name.chomp("!").upcase}. WHY ARE WE SCREAMING?" 
puts name[-1] == "!" ? yell : "Hello #{name}."

