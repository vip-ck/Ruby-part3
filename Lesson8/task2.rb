# frozen_string_literal: true

require 'ostruct'
require 'set'

pole = Set.new
pole << [rand(1..10), rand(1..10)] while pole.size < 9
new = pole.to_a

mas = (0..2).each_with_object([]) do |i, ships|
  ships.concat([
                 "submarine_#{i + 1}" => OpenStruct.new(missiles: rand(20), torpedoes: rand(20),
                                                        tochka: new.pop),
                 "cruiser#{i + 1}" => OpenStruct.new(missiles: rand(20), tochka: new.pop),
                 "transport#{i + 1}" => OpenStruct.new(cargo_hold: 1000, crane: 500, tochka: new.pop)
               ])
end

p mas
