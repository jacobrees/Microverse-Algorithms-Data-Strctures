# frozen_string_literal: true

def binary_tree_height(array_tree)
  array_tree.pop
  remove_node = 2
  height = 1
  loop do
    break if array_tree.empty?

    array_tree.pop(remove_node)
    height += 1
    remove_node *= 2
  end
  height
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3
