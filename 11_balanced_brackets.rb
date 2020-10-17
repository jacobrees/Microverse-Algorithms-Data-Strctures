# frozen_string_literal: true

def balanced_brackets?(string)
  arr = []
  string_arr = string.split(//)
  start_brackets = ['(', '[', '{']
  closed_brackets = [')', ']', '}']
  i = 0
  while i < string_arr.length
    if start_brackets.any? { |bracket| bracket == string_arr[i] }
      arr.push(string_arr[i])
      i += 1
    elsif closed_brackets.any? { |bracket| bracket == string_arr[i] }

      return false if arr[arr.length - 1] == '{' && string_arr[i] != '}'
      return false if arr[arr.length - 1] == '[' && string_arr[i] != ']'
      return false if arr[arr.length - 1] == '(' && string_arr[i] != ')'
      return false if arr.pop.nil?

      i += 1
    else
      i += 1
    end
  end
  arr.empty?
end
