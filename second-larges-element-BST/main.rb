require_relative "./bst"
require "pry"




head_simple  = BinaryTreeNode.new(5)
head_simple.insert(1)  # we expect 1

head_medium = BinaryTreeNode.new(5)
head_medium.insert(1)
head_medium.insert(10) # we expect 5

arr = [*1..100].shuffle
head_complex = BinaryTreeNode.new(arr.shift) # we expect 99

arr.each do |element|
  head_complex.insert(element)
end

def find_second_largest(node)
  if !node.right && node.left
    return node.left
  elsif  !node.right.right
    return node
  else
    find_second_largest(node.right)
  end
end

binding.pry
puts "Done."
