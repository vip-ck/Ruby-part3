# frozen_string_literal: true

number = (ARGV[0]) || 50
filename = ARGV[1] || 't.txt'
File.new(filename, 'w') unless File.file? filename
File.open(filename, 'r+') do |file|
  file.write('D' * number.to_i.abs)
end
