# Another interesting method is each_with_object, and its friend with_object.

# You can use these two methods when you need an object to hold the results.

def clean_string(str)
  str
    .chars
    .each_with_object([]) { |ch, obj| ch == "#" ? obj.pop : obj << ch }
    .join
end

puts clean_string("aaa#b")

# In this example, we want to delete the last character when we find a # symbol.

# Notice:

# * each_with_object takes an argument, which is the object we want to start with. This argument becomes the 2nd block parameter.
# * We are converting the string into an array of characters (char) & then back to a string when we are done (join).
# * We are using a ternary operator to decide what to do, this makes the code shorter.
