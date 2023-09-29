# frozen_string_literal: truerequire_relative 'my_enumerable'# MyList class includes MyEnumerable module.
class MyList
    include MyEnumerable  def initialize(*args)
      @list = args
    end  def each(&block)
      @list.each(&block)
    end
  endlist = MyList.new(1, 2, 3, 4)
  puts(list.all? { |e| e < 5 })
  puts(list.all? { |e| e > 5 })
  puts(list.any? { |e| e == 2 })
  puts(list.any? { |e| e == 5 })
  puts(list.filter(&:even?))