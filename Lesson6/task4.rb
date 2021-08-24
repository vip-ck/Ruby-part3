# frozen_string_literal: true
class Array
def for(num = nil)
  i = 0
  loop do
    break unless block_given?
    yield self unless num.instance_of?(Integer) && num <= 0
    i += 1
    break if i >= num.to_i && num != nil
  end
end
end

[1, 2, 3].for(5) { |x| puts x }
