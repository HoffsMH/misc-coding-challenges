require 'open-uri'

@dictionary  = open('http://www-01.sil.org/linguistics/wordlists/english/wordlist/wordsEn.txt') do
  |file| file.read.split("\r\n")
end

@dictionary = @dictionary.group_by do |word|
  word.chars.sort
end

puts "done making dictionary."

def anagram_finder(word)
  @dictionary[word.chars.sort]
end


puts anagram_finder('arches')
