# frozen_string_literal: true

max = IO.foreach('tekst.txt').map(&:chomp).max_by(&:length)
min = IO.foreach('tekst.txt').map(&:chomp).min_by(&:length)
puts "Максимальное слово: #{max} (#{max.size})"
puts "Минимальное слово: #{min} (#{min.size})"
