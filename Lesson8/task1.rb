# frozen_string_literal: true

require 'set'
# rubocop:disable Style/ClassVars
class Keywords
  @@keywords = Set.new

  def initialize(keyword)
    keyword.each do |w|
      @@keywords.add w.downcase
    end
  end

  # rubocop:enable Style/ClassVars
  def self.tekst
    @@keywords
  end
end
[
  %w[понедельник Вторник Среда],
  %w[четверг пятница суббота],
  %w[воскресенье пятница четверг]
].each { |event| Keywords.new(event) }

puts Keywords.tekst
