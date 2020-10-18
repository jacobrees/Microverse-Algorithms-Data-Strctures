# frozen_string_literal: true

def binary_tree_height(array_tree)
  array_tree.pop(0)
  sum = 0
  loop do
    sum += 1
    break if array_tree[1].nil? || array_tree[2].nil?

    i = 0
    while i < sum
      array_tree.pop(1)
      array_tree.pop(2)
      i += 1
    end
  end
  sum
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3
