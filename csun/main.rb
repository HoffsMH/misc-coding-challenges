# PROBLEM 1
#a = [1, 2 , 3, [4, 5, [6,[8]]]]
#puts a.flatten
# => [1,2,3,4,5,6]
# Can you give me your own implementation of flatten....
# you cut out a bit....


=begin
def flatten(array)
  output_array = []
  array.each do |element|
    if element.class == Array
      output_array.concat(flatten(element))
    else
      output_array << element
    end
  end
  output_array
end

a = [1,2, 3, [4, 5], 78, 99]
puts flatten(a).inspect
=end

#PROBLEM 2: Can you do this without recursion
# csun@blueapron.com

# PROBLEM 3
# Fibonacci 0, 1, 1, 2, 3, 5, 8, 13, 21......
# Can you print the first 1000 values of the sequence
=begin
def fib(num)
  counter = 0
  sequence = [0,1]
  while counter < num
    current = sequence[-1] + sequence[-2]
    puts current
    sequence.push(current)
    counter += 1
  end
end

fib(10)
=end

# http://www.enchantedlearning.com/english/anagram/
# PROBLEM 4
# anagram_finder('arches')
# => ['chaser', 'search']


# http://www-01.sil.org/linguistics/wordlists/english/wordlist/wordsEn.txt
# def anagram_finder(word)
#   # O(N)
#   # O(1)
#   dictionary = ['tab', 'at', 'cat', 'ball', 'chris', 'blue apron', 'chaser', 'search'].sort
#   dictionary.select do |test|
#     is_anagram?(test, word)
#   end
# end
#
# def is_anagram?(first_word, second_word)
#   first_char_groupings = first_word.chars.group_by do |char|
#     char
#   end
#   second_char_groupings = second_word.chars.group_by do |char|
#     char
#   end
#   second_char_groupings == first_char_groupings
# end
#
# puts anagram_finder('arches')

# no recursive flatten
# anagram finder faster
# http://www-01.sil.org/linguistics/wordlists/english/wordlist/wordsEn.txt
# http://www.enchantedlearning.com/english/anagram/
