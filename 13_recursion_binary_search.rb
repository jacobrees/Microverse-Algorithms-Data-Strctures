# frozen_string_literal: true

def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min, max)
  target = (min + max) / 2
  return target if target * target == number

  if target * target > number
    sqrt_recursive(number, min, max = target)
  elsif target * target < number
    sqrt_recursive(number, min = target, max)
  end
end

puts sqrt(25)
puts sqrt(7056)
