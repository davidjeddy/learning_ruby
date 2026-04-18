#!/usr/bin/ruby

names = Array.new(20)
puts names.size  # This returns 20
puts names.length # This also returns 20

names = Array.new(4, "mac")
puts "#{names}"

nums = Array.new(10) { |e| e = e * 2 }
puts "#{nums}"

nums = Array.[](1, 2, 3, 4,5)

nums = Array[1, 2, 3, 4,5]

digits = Array(0..9)
puts "#{digits}"

digits = Array(0..9)
num = digits.at(6)
puts "#{num}"

a = [ "a", "b", "c" ]
n = [ 65, 66, 67 ]
puts a.pack("A3A3A3")   #=> "a  b  c  "
puts a.pack("a3a3a3")   #=> "a\000\000b\000\000c\000\000"
puts n.pack("ccc")      #=> "ABC"
