require 'pry'

words = [
    'ptolemaic',
    'retrograde',
    'supplant',
    'undulate',
    'xenoepist',
    'asymptote', # <-- rotates here!
    'babka',
    'banoffee',
    'engender',
    'karpatka',
    'othellolagkage',
]

def find_rotation1(word_arr)
  rotation_index = nil
  word_arr.each.with_index do |word, index|
    next if index == 0
    (word > word_arr[index-1]) ? nil : rotation_index = index
  end
  rotation_index
end

binding.pry
puts "Done."