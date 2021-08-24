# frozen_string_literal: true

def sled(value)
  value.each_with_object([]) { |x, arr| arr << x[arr.size] }.sum
end
matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

puts "Сумма диагонали : #{matrix}\n равна '#{sled(matrix)}'"
