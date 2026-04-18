#!/usr/bin/ruby -w

# define a class
class Box
  # constrcutor method
  def initialize(w,h)
    @width, @height = w, h
  end

  # instance method
  def getArea
    @width * @height
  end
end

box = Box.new(10, 20)

# call instance method
a = box.getArea()
puts "Area of the box is: #{a}."
