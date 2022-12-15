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
p nums.list

nums.all? {|e| e < 5}
nums.all? {|e| e > 5}
nums.any? {|e| e == 2}
nums.any? {|e| e == 5}
nums.filter {|e| e.even?}
