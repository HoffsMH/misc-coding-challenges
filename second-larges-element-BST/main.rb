require_relative "./bst"
require "pry"




head_simple  = BinaryTreeNode.new(5)
head_simple.insert(1)  # we expect 1

head_medium = BinaryTreeNode.new(5)
head_medium.insert(1)
head_medium.insert(10) # we expect 5

arr = [*1..90000].shuffle
head_complex = BinaryTreeNode.new(arr.shift) # we expect 99

head_specific1 = BinaryTreeNode.new(5)
head_specific1.insert(3)
head_specific1.insert(1)
head_specific1.insert(4)
head_specific1.insert(8)
head_specific1.insert(7)
head_specific1.insert(12)
head_specific1.insert(10)
head_specific1.insert(9)
head_specific1.insert(11) # we expect 11

head_specific2 = BinaryTreeNode.new(5)
head_specific2.insert(3)
head_specific2.insert(1)
head_specific2.insert(4)
head_specific2.insert(8)
head_specific2.insert(7)
head_specific2.insert(12)
head_specific2.insert(10) #we expect 10
head_specific2.insert(9)


arr.each do |element|
  head_complex.insert(element)
end

def find_second_largest(node, largest_found=false)
  if node.right &&  !node.right.right #we found the largest element
    if !node.right.left #the largest element doesn't have a left
      return node
    else
      find_second_largest(node.right.left, true)
    end
  elsif !node.right && largest_found
    return node
  elsif node.right && largest_found
    find_second_largest(node.right, true)
  elsif !node.right && node.left #we are in a really small tree
    return node.left
  elsif !node.right && !node.left #we are in a really small tree
    return node
  else
    find_second_largest(node.right)
  end
end

binding.pry
puts "Done."
