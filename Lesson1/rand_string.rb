file = File.readlines(ARGV.first).map(&:chomp)
 puts file.shuffle.first