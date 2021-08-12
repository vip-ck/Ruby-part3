# frozen_string_literal: true

class Vector
  def self.distance(tocka1, tocka2)
    Math.sqrt((tocka1.x - tocka2.x)**2 + (tocka1.y - tocka2.y)**2)
  end

  # rubocop:disable Naming/MethodParameterName
  class Point
    attr_accessor :x, :y

    def initialize(x, y)
      @x = x
      @y = y
    end
    # rubocop:enable Naming/MethodParameterName
  end
end

a = Vector::Point.new(3, 6)
b = Vector::Point.new(-1, 5)
puts Vector.distance(a, b)
