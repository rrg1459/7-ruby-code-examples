
# Recursion is when a method calls itself multiple times as a way to make progress towards a solution.

# Many interesting problems can be solved with recursion.

# But because recursion has its limits, you can use a stack data structure instead.

# Let’s look at an example where we want to find out the “Power Set” of a given array. The Power Set is a set of all the subsets that can be created from the array.

def get_numbers(list, index = 0, taken = [])
  # example with recursion:
  return [taken] if index == list.size

  get_numbers(list, index+1, taken) +
  get_numbers(list, index+1, taken + [list[index]])
end

def get_numbers_stack(list)
  # the same problem solved using a stack:
  stack  = [[0, []]]
  output = []
  until stack.empty?
    index, taken = stack.pop
    next output << taken if index == list.size
    stack.unshift [index + 1, taken]
    stack.unshift [index + 1, taken + [list[index]]]
  end
  output
end


puts "-"*40
puts get_numbers([1,2,3])
puts get_numbers([1,2,3]).inspect
puts "-"*40
puts get_numbers_stack([1,2,3])
puts get_numbers_stack([1,2,3]).inspect
puts "-"*40
