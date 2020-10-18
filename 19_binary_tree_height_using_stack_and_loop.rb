# frozen_string_literal: true

def tree_height(tree_as_list)
  tree_as_list.pop(0)
  sum = 0
  loop do
    sum += 1
    break if tree_as_list[1].nil? || tree_as_list[2].nil?

    i = 0
    while i < sum
      tree_as_list.pop(1)
      tree_as_list.pop(2)
      i += 1
    end
  end
  sum
end
