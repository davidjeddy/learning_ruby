#!/usr/bin/ruby

begin
   file = open("/unexistant_file")
   if file
      puts "File opened successfully"
   end
rescue
      file = STDIN
end
print file, "==", STDIN, "\n"

=begin
The following is the flow of the process −

An exception occurred at open.
Went to rescue. fname was re-assigned.
By retry went to the beginning of the begin.
This time file opens successfully.
Continued the essential process.
=end
#begin
#   file = open("/unexistant_file")
#   if file
#      puts "File opened successfully"
#   end
#rescue
#   fname = "existant_file"
#   retry
#end

begin  
   puts 'I am before the raise.'  
   raise 'An error has occurred.'  
   puts 'I am after the raise.'  
rescue  
   puts 'I am rescued.'  
end  
puts 'I am after the begin block.'  

begin  
   raise 'A test exception.'  
rescue Exception => e  
   puts e.message  
   puts e.backtrace.inspect  
end  

begin
   raise 'A test exception.'
rescue Exception => e
   puts e.message
   puts e.backtrace.inspect
ensure
   puts "Ensuring execution"
end

begin
   # raise 'A test exception.'
   puts "I'm not raising exception"
rescue Exception => e
   puts e.message
   puts e.backtrace.inspect
else
   puts "Congratulations-- no errors!"
ensure
   puts "Ensuring execution"
end
