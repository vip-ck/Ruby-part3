# frozen_string_literal: true

file = File.readlines('newfile.txt').map(&:chomp)
File.open('newfile.txt', 'w').puts(file.shuffle)
