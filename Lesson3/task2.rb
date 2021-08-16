COLORS = {
  red: 'красный',
  orange: 'оранжевый',
  yellow: 'желтый',
  green: 'зеленый',
  blue: 'голубой',
  indigo: 'синий',
  violet: 'фиолетовый'
}.freeze

module Kernel
  def method_missing(param)
    COLORS[param]
  end
end
puts violet
puts indigo