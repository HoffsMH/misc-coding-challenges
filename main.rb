require 'pry'

arr = [3, 1, 2, 5, 6, 4]




def slow_way(arr)
  arr.map.with_index do |element, index|
    inner = Array.new(arr)
    inner.delete_at(index)
    inner.reduce(:*)
  end
end

def better_way(arr)
  accum = 1
  before = arr.map.with_index do |element|
    accum *= element
    accum
  end
  before.pop
  before.unshift(1)

  accum = 1
  after = arr.reverse.map.with_index do |element|
    accum *= element
    accum
  end
  after.pop
  after.unshift(1)
  after.reverse!
  
  before.map.with_index do |element, index|
    element * after[index]
  end

end

binding.pry
puts "we are done"
