# frozen_string_literal: true

def tree_height(tree_as_list)
  tree_as_list.pop
  remove_node = 2
  height = 1
  loop do
    break if tree_as_list.empty?

    tree_as_list.pop(remove_node)
    height += 1
    remove_node *= 2
  end
  height
end

puts tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3
