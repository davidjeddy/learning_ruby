#!/usr/bin/ruby

x, y, z = 12, 36, 72
puts "The value of x is #{ x }."
puts "The sum of x and y is #{ x + y }."
puts "The average was #{ (x + y + z)/3 }."

%{Ruby is fun.}		# equivalent to "Ruby is fun."
%Q{ Ruby is fun. } 	# equivalent to " Ruby is fun. "
%q[Ruby is fun.]  	# equivalent to a single-quoted string
%x!ls! 			# equivalent to back tick command output `ls`

puts"$KCODE = 'u' to use UTF-8 file encode; default is ASCII"

# new [String.new(str = "")]
myStr = String.new("THIS IS A TEST")
foo = myStr.downcase
puts "#{foo}"

"abc \0\0abc \0\0".unpack('A6Z6')   #=> ["abc", "abc "]
"abc \0\0".unpack('a3a3')           #=> ["abc", " \000\000"]
"abc \0abc \0".unpack('Z*Z*')       #=> ["abc ", "abc "]
"aa".unpack('b8B8')                 #=> ["10000110", "01100001"]
"aaa".unpack('h2H2c')               #=> ["16", "61", 97]
"\xfe\xff\xfe\xff".unpack('sS')     #=> [-2, 65534]
"now = 20is".unpack('M*')           #=> ["now is"]
"whole".unpack('xax2aX2aX1aX2a')    #=> ["h", "e", "l", "l", "o"]
