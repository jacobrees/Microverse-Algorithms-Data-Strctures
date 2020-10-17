# frozen_string_literal: true

def move(starting, goal)
  intermediate = ([1, 2, 3] - [starting, goal]).first
  result = move_text(starting, intermediate)
  result += move_text(starting, goal)
  result += move_text(intermediate, goal)
  result
end

def move_text(position1, position2)
  position1.to_s + '->' + position2.to_s + ' '
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
