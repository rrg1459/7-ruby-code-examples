def reverse_alternate(string)
  string.gsub(/[^\s]+/).with_index { |w, idx| idx.even? ? w : w.reverse }
end

str = 'Apples are some Good'
puts str
puts reverse_alternate(str) # "Apples era Good"
