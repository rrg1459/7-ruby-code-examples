def alternating_characters?(s)
  type = [/[aeiou]/, /[^aeiou]/].cycle
  if s.start_with?(/[^aeiou]/)
    type.next
  end
  s.chars.all? { |ch| ch.match?(type.next) }
end
puts alternating_characters?("ateciyanu")
