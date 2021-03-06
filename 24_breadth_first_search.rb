# frozen_string_literal: true

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

p bfs({
        0 => [2],
        1 => [4],
        2 => [5, 0, 3],
        3 => [2],
        4 => [1, 5],
        5 => [4, 2]
      })
# => [0, 2, 5, 3, 4, 1]
