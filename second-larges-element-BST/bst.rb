class BinaryTreeNode
  attr_accessor :value
  attr_reader :left, :right

  def initialize(value)
      @value = value
      @left  = nil
      @right = nil
  end

  def insert(value)
    if value > @value
      if @right
        @right.insert(value)
      else
        @right = BinaryTreeNode.new(value)
      end
    else
      if @left
        @left.insert(value)
      else
        @left = BinaryTreeNode.new(value)
      end
    end
  end

  def insert_left(value)
      @left = BinaryTreeNode.new(value)
      return @left
  end

  def insert_right(value)
      @right = BinaryTreeNode.new(value)
      return @right
  end
end
