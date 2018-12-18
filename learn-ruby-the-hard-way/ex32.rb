hairs = ['brown', 'blond', 'red']
eyes = ['brown', 'blue', 'green']
weights = [1, 2, 3, 4]

the_count = [1, 2, 3, 4, 5]
fruits = ["apples", "oranges", "pears", "apricots"]
change = [1, "pennies", 2, "dimes", 3, "quarters"]

# this first kind of for-loop goes through a list
# in a more traditional style found in other languages
for number in the_count
  puts "This is the count #{number}."
end

# same as above, but in a more Ruby style
# this and the next one are the preferred
# way Ruby for-loops are written
fruits.each do |fruit|
  puts "A friot pf type: #{fruit}."
end

# also we can go through mixed lists too
# note thjis is yet another style, exactly like above
# but a different syntax (way to write it).
change.each {|i| puts "I got #{i}."}

# we can also build lists, first start with an empty one
elements = []

# then iuse the range operatior to do 0 to 5 counts
(0..5).each do |i|
  puts "adding #{i} to the list"
  # pushes the i var. on the *end* of the list
  elements.push(i)
end

# now we can priont them out too
elements.each {|i| puts "Element was: #{i}."}