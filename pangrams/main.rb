require 'pry'

pangram1 = "We promptly judged antique ivory buckles for the next prize"

non_pangram1 = "We promptly judged antique ivory buckles for the prize"

def pangram?(sentence)
  sentence.downcase!
  counts = sentence.chars.group_by do |char|
    char
  end
  counts.delete(" ")
  if counts.keys.count == 26
    puts "pangram"
    return true
  else
    puts "not pangram"
    return false
  end
end

binding.pry
puts "Done."
