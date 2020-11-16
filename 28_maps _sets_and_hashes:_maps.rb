# frozen_string_literal: true

def appears_most_times(array)
  most_times = {}
  i = 0
  while i < array.length
    most_times[array[i]] = 1 unless most_times.key?(array[i])
    most_times[array[i]] += 1 if most_times.key?(array[i])
    i += 1
  end
  most_times.max_by { |_k, v| v }[0]
end

puts appears_most_times([1, 2, 3, 1, 5])
# => 1

puts appears_most_times([23, 43, 67, 88, 42, 35, 77, 88, 99, 11])
# => 88

puts appears_most_times([4376, -345, -345, 4376, -345, 84_945, 4376, -345, -26_509, 4376, 84_945, 84_945, -26_509, 896_341, 4376])
# => 4376
