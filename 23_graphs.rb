# frozen_string_literal: true

def graph(hash_graph)
  arr = []
  next_node = 0
  loop do
    arr.push(next_node)
    break if next_node == 4

    next_node = hash_graph[next_node][0]
  end
  arr
end

hash = {
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]
