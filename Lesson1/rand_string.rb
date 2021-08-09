# frozen_string_literal: true

file = File.readlines(ARGV.first).map(&:chomp)
# rubocop:disable Style/Sample
puts file.shuffle.first
# rubocop:enable Style/Sample
