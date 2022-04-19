=begin

QUESTION
You are given a method named `spin_me` that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same as the one passed in as an argument or a different object?

ANSWER
I believe it is a different object. When we call `split` on the input string, it's giving us a new array object, and this is the object that `each` will return. Then we call `join` on this returned array, which yields yet another new object (a string). There's no reference to the original object referenced by `str` here.

=end

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"
