# On my PC, the code:

puts Float::DIG  
# outputs 15. And.

puts Float::MAX 
# outputs 1.79769313486232e+308

rice_on_square = 1  
64.times do |square|  
	puts "On square #{square + 1} are #{rice_on_square} grain(s)"  
	rice_on_square *= 2  
end 

# class method usage
s = 'hello'  
s.class  # String  

# class to_s
#puts 'I am in class = ' + self.class.to_s  
#puts 'I am an object = ' + self.to_s  
#print 'The object methods are = '  
#puts self.private_methods.sort  

5.times { puts "Mice!\n" } # more on blocks later  
"Elephants Like Peanuts".length
