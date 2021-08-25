# frozen_string_literal: true

books = { 'Design Patterns in Ruby' => ['Russ Olsen'],
          'Eloquent Ruby' => ['Russ Olsen'],
          'The Well-Grounded Rubyist' => ['David A. Black'],
          'The Ruby Programming Language' => ['David Flanagan', 'Yukihiro Matsumoto'],
          'Metaprogramming Ruby 2' => ['Paolo Perrotta'],
          'Ruby Cookbook' => ['Lucas Carlson', 'Leonard Richardson'],
          'Ruby Under a Microscope' => ['Pat Shaughnessy'],
          'Ruby Performance Optimization' => ['Alexander Dymo'],
          'The Ruby Way' => ['Hal Fulton', 'Andre Arko'] }
avtor = books.values.flatten.uniq.each_with_object({}) do |author, hash|
  hash[author] = books.select { |k, v| k if v.include?(author) }.size # .sort_by(&:keys)
end

p avtor
avtor.sort_by { |k, _v| k }.to_h.each { |a, b| p "#{a} #{b}" }
