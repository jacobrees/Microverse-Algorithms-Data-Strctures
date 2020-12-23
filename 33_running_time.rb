# frozen_string_literal: true

def running_time(array)
  time = 0
  (1...array.length).each do |i|
    small = array[i]
    j = i - 1
    while j >= 0 && small < array[j]
      time += 1
      array[j + 1] = array[j]
      j -= 1
    end
    array[j + 1] = small
  end
  time
end

puts running_time([2, 1, 3, 1, 2])
# => 4
