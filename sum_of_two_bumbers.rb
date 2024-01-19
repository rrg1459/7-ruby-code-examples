# In this example we want to find out if given an array of unique numbers, there is a combination of two numbers which adds up to a target number.

def sum_eq_n?(arr, n)
  return true if arr.empty? && n == 0
  arr.product(arr).reject { |a,b| a == b }.any? { |a,b| a + b == n }
end

puts sum_eq_n?([1,2,3,4,5], 1) # false
puts sum_eq_n?([1,2,3,4,5], 6) # true
puts sum_eq_n?([1,2,3,4,5], 13) # false
