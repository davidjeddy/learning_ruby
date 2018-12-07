# unless
unless ARGV.length == 2
  puts "Usage: program.rb 23 45"  
#  exit  
end  

# Loops  
var = 0  
while var < 10  
  puts var  
  var += 1  
end 

age = 15  
# We talk about the Range class later on  
# will output teenager  
puts (13...19).include?(age) ? "teenager" : "not a teenager"  

age = 23  
person = (13...19).include?(age) ? "teenager" : "not a teenager"  
puts person # => "not a teenager" 

participants = 2450
puts "Enrollments will now Stop" if participants > 2500  

year = 2000  
leap = case  
       when year % 400 == 0 then true  
       when year % 100 == 0 then false  
       else year % 4   == 0  
       end  
puts leap  

# We can determine our object's class and its unique object ID  
# NIL is synonym for nil  
puts NIL.class # NilClass  
puts nil.class # NilClass  
puts nil.object_id # 4  
puts NIL.object_id # 4  
  
# FALSE is synonym for false  
puts FALSE.class # FalseClass  
puts false.class # FalseClass  
puts false.object_id # 0  
puts FALSE.object_id # 0 
