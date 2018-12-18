puts "You enter a dark room with two doors. Do you go throuigh door #1 or #2?"

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There is a giant bear here eating a cheese cake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."

  print "> "
  bear = $stdin.gets.chomp
  
  if bear == "1"
    puts "The bears your face off. Good Job!"
  elsif bear == "2"
    puts "The bears eats your face off. Good Job!"
  else
    puts "Well, doiung %s is probably better. Bear ruyns wawy." % bear
  end

elsif door == "2"
  puts "You stare into the end endless abyss at Cthulhi's retina."
  puts "1. B;lueberries"
  puts "2. Yellow jacket slothespins"
  puts "3. Understanding revolvers yelling melodies."

  print "> "
  insanity = $stdin.gets.chomp

  if insanity == "1" || insanity == "2"
    puts "Your body survives powered byu a miond of jello. Good Job!"
  else
    puts "Your insanity rots your eyes into a pool of muck. Good Job!"
  end

else
  puts "You stumble around and fall on a knofe and die. Good Job!"
end