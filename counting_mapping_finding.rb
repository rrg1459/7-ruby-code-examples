# Counting, Mapping & Finding
# Let’s say that you want to find the missing number in an arithmetic sequence, like (2,4,6,10).
# We can use a strategy where we calculate the difference between the numbers.
# [2, 2, 4]

# Our goal here is to find out what the sequence is.
# Is it increasing or decreasing?
# By how much?

def find_missing(sequence)
  consecutive     = sequence.each_cons(2)
  puts "consecutive: #{consecutive.inspect}"
  differences     = consecutive.map { |a,b| b - a }
  puts "differences: #{differences}"
  sequence        = differences.max_by { |n| differences.count(n) }
  puts "sequence: #{sequence}"
  missing_between = consecutive.find { |a,b| (b - a) != sequence }
  puts "missing_between: #{missing_between}"
  missing_between.first + sequence
end

puts "-"*40
puts find_missing([1,2,3,4,5,6,7,9])
puts "-"*40
puts find_missing([2,4,6,10])
puts "-"*40
puts find_missing([3,6,9,12,15,21])
puts "-"*40
