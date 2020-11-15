# frozen_string_literal: true

class Node
  attr_reader :data
  attr_accessor :left, :right
  def initialize(data)
    @data = data
  end
end
# helper function
def array_to_tree(arr, i = 0)
  # use your function from the previous challenge
  return nil unless i < arr.length
  return nil if (arr[i]).zero?

  left = 2 * i + 1
  right = 2 * i + 2
  node = Node.new(arr[i])
  node.left = array_to_tree(arr, left)
  node.right = array_to_tree(arr, right)
  node
end

# helper function
def height(node, h)
  # use your function from the previous challenge
  return h if node.nil?

  lefth = height(node.left, h + 1)
  righth = height(node.right, h + 1)
  if lefth > righth
    lefth
  else
    righth
  end
end

def balanced_tree?(array)
  root = array_to_tree(array)
  # write your code here
  validate_balance(root)
end

def validate_balance(node)
  lefth = height(node.left, 0)
  righth = height(node.right, 0)
  return false if (lefth - righth).abs > 1

  unless node.left.nil?
    return false unless validate_balance(node.left)
  end
  unless node.right.nil?
    return false unless validate_balance(node.right)
  end
  true
end
puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false
puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true
