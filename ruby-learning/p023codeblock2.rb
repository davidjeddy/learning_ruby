# You can provide parameters to the call to yield:  
# these will be passed to the block  
def call_block  
  yield('hello', 99)  
end  
call_block {|str, num| puts str + ' ' + num.to_s}  



def try  
  if block_given?  
    yield  
  else  
    puts "no block"  
  end  
end  
try # => "no block"  
try { puts "hello" } # => "hello"  
try do puts "hello" end # => "hello"  



x = 10  
5.times do |x|  
  puts "x inside the block: #{x}"  
end   
puts "x outside the block: #{x}"  



x = 10  
5.times do |y|  
  x = y  
  puts "x inside the block: #{x}"  
end  
  
puts "x outside the block: #{x}" 



x = 10  
5.times do |y; x|  
  x = y  
  puts "x inside the block: #{x}"  
end  
puts "x outside the block: #{x}"  
