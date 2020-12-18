# frozen_string_literal: true

def connected_graph?(graph)
  has_nodes_dfs = depth_first_search(graph)
  has_nodes_bfs = bfs(graph)

  has_nodes_dfs.count + has_nodes_bfs.count == graph.count * 2
end

def bfs(graph)
  discovered = Array.new(graph.keys.length, false)
  queue = []
  path = []
  queue.push(0)
  discovered[0] = true
  until queue.empty?
    current = queue.shift
    path.push(current)
    graph[current].each do |adjacent|
      unless discovered[adjacent]
        queue.push(adjacent)
        discovered[adjacent] = true
      end
    end
  end
  path
end

def depth_first_search(graph)
  discovered = Array.new(graph.keys.length, false)
  path = []
  stack = []
  stack.push(0)
  discovered[0] = true
  until stack.empty?
    current = stack.pop
    path.push(current)
    graph[current].reverse_each do |adjacent|
      unless discovered[adjacent]
        stack.push(adjacent)
        discovered[adjacent] = true
      end
    end
  end
  path
end

puts connected_graph?({
                        0 => [2],
                        1 => [4],
                        2 => [0, 5, 3],
                        3 => [5, 2],
                        4 => [5, 1],
                        5 => [4, 2, 3]
                      })
# => true

puts connected_graph?({
                        0 => [1, 2],
                        1 => [0, 2],
                        2 => [0, 1, 3, 4, 5],
                        3 => [2, 4],
                        4 => [3, 2],
                        5 => [2]
                      })
# => true
