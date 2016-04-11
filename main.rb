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

def best_way(arr)
  before_accum = 1
  after_accum = 1
  before = [1]
  after  = [1]
  arr.each.with_index do |element, index|
    before_accum *= element
    after_accum *= arr[-index-1]

    before.push(before_accum)
    after.unshift(after_accum)
  end

  before.pop
  after.shift

  before.each.map.with_index do |element, index|
    element * after[index]
  end
end


binding.pry
puts "we are done"
