# Would you like to have the current index while iterating over a collection of items?

# You can use the with_index method.

def reverse_alternate(string)
  string.gsub(/[^\s]+/).with_index { |w, idx| idx.even? ? w : w.reverse }
end

str = 'Apples are some Good'
puts str
puts reverse_alternate(str) # "Apples era Good"

# Notice:

# We combine with_index & even? to find if we have to reverse the current word
# Gsub without a block returns an Enumerator object, which allows you to chain it with other methods
