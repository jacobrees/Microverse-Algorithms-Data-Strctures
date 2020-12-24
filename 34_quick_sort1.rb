# frozen_string_literal: true

def partition(array)
  p = array[0]
  left = []
  right = []
  i = 1
  while i < array.length
    if array[i] < p
      left << array[i]
    else
      right << array[i]
    end
    i += 1
  end
  array = left
  array << p
  array << right
  array.flatten
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]
