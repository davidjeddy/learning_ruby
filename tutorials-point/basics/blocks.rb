def test
	puts "You are in a method"
	yield
	puts "You ares again back in the method"
	yield
end
test {puts "You in the block"}

def test2
	yield 5
	puts "You are in the method test2"
	yield 100
end
test2 {|i| puts "You are in the block ${i}"}

def test3
	yield
end
test3 { puts "Hello World" }

def test4(&block)
	block.call
end
test { puts "Hello World" }

BEGIN { 
   # BEGIN block code 
   puts "BEGIN code block"
} 

END { 
   # END block code 
   puts "END code block"
}
   # MAIN block code 
puts "MAIN code block"
