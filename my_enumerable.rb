module Enumerable
  def all?
    num = []
    list.each { |n| num.push(n) if yield n }
    p num.length == list.length
  end

  def any?
    num = []
    list.each { |n| num.push(n) if yield n }
    p !num.empty?
  end

  def filter
    num = []
    list.each { |n| num.push(n) if yield n }
    p num
  end
end
