require "pry"

a = [1, 2 , 3, [4, 5, [6,[8]]], 8 , 10]
b = [1,2, 3, [4, 5], 78, 99]




def recursive_flatten(array)
 output_array = []
 array.each do |element|
   if element.class == Array
     output_array.concat(recursive_flatten(element))
   else
     output_array << element
   end
 end
 output_array
end

def flatten(array)
  output_array = []
  while !array.empty? do
    if array.first.class == Array
      array.unshift(*array.shift)
    else
      output_array.push(array.shift)
    end
  end
  output_array
end

puts flatten(a).inspect

binding.pry
puts "Done."
