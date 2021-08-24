# frozen_string_literal: true

class Integer
  def to_a(bit = 2)
    bit = 2 unless [2, 8, 16].include? bit
    arr = to_s(bit).split('')
    bit < 16 ? arr.map(&:to_i) : arr
  end
end

p 10.to_a(8)
p 10.to_a(16)
