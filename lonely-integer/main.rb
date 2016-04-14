#!/bin/ruby
require "pry"

def  lonelyinteger(a)
  int_counts = {}
  a.each do |num|
    int_counts[num] = 0 if !int_counts[num]
    int_counts[num] += 1
  end
  int_counts.min_by { |k,v| v }.first
end
# a = gets.strip.to_i
# b = gets.strip.split(" ").map! {|i| i.to_i}
b = [1,4,1,4,6,5,9,5,9]
print lonelyinteger(b)

binding.pry
puts "Done."
