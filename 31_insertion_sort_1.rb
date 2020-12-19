# frozen_string_literal: true

def insertion_sort(array)
  i = 0
  while i < array.length - 1
    if array[i] > array[i + 1]
      small = array[i + 1]
      array [i + 1] = array[i]
      puts array.join(' ')
      while small < array[i] && small < array[i - 1]
        i -= 1
        array [i + 1] = array[i]
        puts array.join(' ')
        break if i.zero?
      end
      array[i] = small
      puts array.join(' ')
    end
    i += 1
  end
end

insertion_sort([1, 3, 2])
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9

puts '-' * 20

insertion_sort([2, 3, 4, 5, 6, 7, 8, 9, 10, 1])
