#!/usr/bin/ruby

def promptAndGet(prompt)
   print prompt
   res = readline.chomp
   throw :quitRequested if res == "!"
   return res
end

catch :quitRequested do
   name = promptAndGet("Name: ")
   age = promptAndGet("Age: ")
   sex = promptAndGet("Sex: ")
   # ..
   # process information
end
promptAndGet("Name:")


# exp. custom exception class
class FileSaveError < StandardError
   attr_reader :reason
   def initialize(reason)
      @reason = reason
   end
end

File.open(path, "w") do |file|
begin
   # Write out the data ...
rescue
   # Something went wrong!
   raise FileSaveError.new($!)
end
end
