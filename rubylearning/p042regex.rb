m1 = /Ruby/.match("The future is Ruby")  
puts m1.class  # it returns MatchData  
m2 = "The future is Ruby" =~ /Ruby/  
puts m2          # it returns 14  
