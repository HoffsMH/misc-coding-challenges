require "pry"

def flip_bits(num)
  bits =  "%032b" % num

  bits.chars.map do |char|
    char == "1" ? "0" : "1"
  end.join.to_i(2)
end

puts flip_bits(1)

binding.pry
puts "Done."
