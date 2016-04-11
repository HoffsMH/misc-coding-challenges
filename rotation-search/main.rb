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
words2 = [ 'k','v','a','b','c','d','e','g','i' ]
words3 = ["j", 'k','l','m','n','o','v','w','x','y','z','a','b','c','d','e','g','i' ]

def find_rotation1(word_arr)
  rotation_index = nil
  word_arr.each.with_index do |word, index|
    next if index == 0
    if !(word > word_arr[index-1])
       rotation_index = index
       break
    end
  end
  rotation_index
end


def find_rotation2(word_arr, index=0)
  middle_index = (word_arr.length - 1) / 2
  middle_element = word_arr[middle_index]
  if (word_arr.length == 2) || (word_arr[middle_index - 1] > middle_element)
    return index + middle_index
  end
  if middle_element < word_arr.first
      find_rotation2(word_arr[0..middle_index], index )
  else
    find_rotation2(word_arr[middle_index..-1], (index + middle_index))
  end
end

binding.pry
puts "Done."
