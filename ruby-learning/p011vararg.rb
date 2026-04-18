# The asterisk is actually taking all arguments you send to the method  
# and assigning them to an array named my_string as shown below  
# The do end is a Ruby block which we talk in length later  
def foo(*my_string)  
  my_string.inspect  
end  
puts foo('hello','world')  
puts foo() 

# p012mtdstack.rb  
# Sequence in which the parameters are put on to the stack is left to right  
def mtd(a=99, b=a+1)  
  [a,b]  
end  
puts mtd # displays 99, 100  

def downer(string)  
  string.downcase  
end  
a = "HELLO"  
downer(a)      # -> "hello"  
puts a         # -> "HELLO"  
  
def downer(string)  
  string.downcase!  
end  
a = "HELLO"  
downer(a)      # -> "hello"  
puts a         # -> "hello"  
