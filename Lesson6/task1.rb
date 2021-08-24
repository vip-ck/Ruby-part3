# frozen_string_literal: true

num = []

loop do
  print 'Введите число от 1 до 10: '
  num = gets.to_i
  break if (1..10).include? num
end

puts ((1..num).to_a + (1...num).to_a.reverse).to_s
