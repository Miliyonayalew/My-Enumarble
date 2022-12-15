module Enumerable
    def all?
        num = []
        mylist.each { |n| num.push(n) if yield n }
        print num.length == mylist.length
    end
    def any?
    end
    def filter
    end
end