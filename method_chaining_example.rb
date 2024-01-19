# This it shows how powerful Ruby is.

# Combining methods allows you to take the output produced by one method & pass it into another.

# Just like a factory production line!

# You start with some raw materials (input), then through the process of calling these methods, you slowly transform the raw materials into the desired result.

def longest_repetition(string)
  max = string
          .chars
          .chunk(&:itself)
          .map(&:last)
          .max_by(&:size)
  max ? [max[0], max.size] : ["", 0]
end

puts longest_repetition("aaabb") # ["a", 3]

# Given a string, this code will find the longest repeated character.

# Note:

# How this code is formatted to maximize readability
# Use of the Symbol#to_proc pattern (&:size)
# Btw, don't confuse this with the "Law of Demeter".

# That "law" is about reaching out into the internals of another object.

# Here we are only transforming objects.
