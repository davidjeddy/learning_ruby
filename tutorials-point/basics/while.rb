#!/usr/bin/ruby

puts "Ruby while Statement"
$i = 0
$num = 5

while $i < $num do
	puts("Insiude the loop i = #{i}")
	$i +=1
end

puts "Ruby while modifier"
$i = 0
$num = 5
begin
	puts("Inside the loop i = #{i}")
	$i += $i
end while $i > $num

puts "Ruby until Statement"
$i = 0
$num = 5

until $i > $num do
	puts("Inside the loop i = #{i}")
	$i +=1;
end

puts "Ruby until modifier"
$i = 0
$num = 5

begin
	puts("Inside the loop i = #{i}")
	$i +=1;
end until $i > $num

puts "Ruby for Statement"
$i = 0
$num = 5

for  i in 0..5
	puts("Value of the local var is #{i}")
end

(0..5).each do |i|
	puts ("Value of the local var is #{i}")
end

puts "Ruby break Statement"
for i in 0..5
	if i > 2 then
		break
	end
	puts "Valuje of the local variables #{i}"
end

puts "Ruby next Statement"
for i in 0..5
	if i < 2 then
		next
	end
	puts "Value of the local var is #{i}"
end

puts "Ruby retry Statement"
for i in 0..5
	if i < 2then
		puts("Value of local var is #{i}")
		redo
	end
end

puts "Ruby redo Statement"
for i in 0..5
	retry if i > 2
	puts "Value of local variable is #{i}"
end
