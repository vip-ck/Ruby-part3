# frozen_string_literal: true

COLORS = {
  red: 'красный',
  orange: 'оранжевый',
  yellow: 'желтый',
  green: 'зеленый',
  blue: 'голубой',
  indigo: 'синий',
  violet: 'фиолетовый'
}.freeze

# rubocop:disable Style/MissingRespondToMissing
module Kernel
  def method_missing(param)
    COLORS[param]
  end
  # rubocop:enable Style/MissingRespondToMissing
end
puts indigo
puts violet
