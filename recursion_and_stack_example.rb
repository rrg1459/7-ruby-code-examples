def get_numbers(list, index = 0, taken = [])
  return [taken] if index == list.size

  get_numbers(list, index+1, taken) +
  get_numbers(list, index+1, taken + [list[index]])
end

def get_numbers_stack(list)
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
puts "-"*40
puts get_numbers_stack([1,2,3])
puts "-"*40
