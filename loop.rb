# while
num = 1

while num <= 10
	puts num
	num += 1
end

# for
for num in 1..10
	puts num
end

# each
[1, 2, 3, 4, 5].each do |num|
	puts num
end

# For VS each
# for looping
for num in 1...5
	puts num
end

puts num # => 5
   
# each iterator
[1, 2, 3, 4, 5].each do |num|
	puts num2
end

# puts num2 # => undefined local variable or method `n' for main:Object (NameError)
