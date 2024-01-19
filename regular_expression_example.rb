# We want to find out if a given string follows a pattern of VOWEL to NON-VOWEL characters.

def alternating_characters?(s)
  type = [/[aeiou]/, /[^aeiou]/].cycle
  if s.start_with?(/[^aeiou]/)
    type.next
  end
  s.chars.all? { |ch| ch.match?(type.next) }
end
puts alternating_characters?("ateciyanu") # true
puts alternating_characters?("ateciyau") # false
