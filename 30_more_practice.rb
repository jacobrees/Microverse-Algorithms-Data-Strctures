# frozen_string_literal: true

def find_pairs(array, k)
  result = []
  i = 0
  while i < array.length
    j = i + 1
    while j < array.length
      result << [array[i], array[j]] if array[i] + array[j] == k
      j += 1
    end
    i += 1
  end
  result
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]
