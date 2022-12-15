require_relative './my_enumerable'

class MyList
  include Enumerable

  def initialize(*list)
    @list = list
  end

  attr_reader :list

  def each
    yield @list
  end
end

nums = MyList.new(1, 2, 3, 4)
p nums.list # [1, 2, 3, 4]

# # Test all?
nums.all? { |e| e < 5 } # true
nums.all? { |e| e > 5 } # false

# Test any?
nums.any? { |e| e == 2 } # true
nums.any? { |e| e == 5 } # false

# Test #filter
nums.filter(&:even?) # [2, 4]
