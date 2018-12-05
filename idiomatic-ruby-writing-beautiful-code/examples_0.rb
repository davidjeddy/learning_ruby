an_array.map { |element| element * element }

# Array Map
# good
user_ids = []	
users.each { |user| user_ids << user.id }

# better
user_ids = users.map { |user| user.id }

# best
user_ids = users.map(&:id)

# Select
even_numbers = [1, 2, 3, 4, 5].map { |element| element if element.even? } # [ni, 2, nil, 4, nil]
even_numbers = even_numbers.compact # [2, 4]
# nil object as well. Use the compact method to remove all nil objects.

[1, 2, 3, 4, 5].select { |element| element.even? }

[1, 2, 3, 4, 5].select(&:even?)

# Sample

# good
[1, 2, 3][rand(3)]

# better
[1, 2, 3].shuffle.first

# best[
1, 2, 3].sample

# Implicit return
def get_user_ids(users)
  return users.map(&:id)
end

def get_user_ids(users)
  users.map(&:id)
end

# Multiple assignments

def values
  [1, 2, 3]
end

one   = values[0]
two   = values[1]
three = values[2]


def values
  [1, 2, 3]
end

one, two, three = values

# Methods that ask questions (also called predicates)

movie.awesome # => true

movie.awesome? # => true

[].any? # => false
[1, 2, 3].any? # => true

# Interpolation
programming_language = "Ruby"
programming_language + " is a beautiful programming_language" # => "Ruby is a beautiful programming_language"

programming_language = "Ruby"
"#{programming_language} is a beautiful programming_language" # => "Ruby is a beautiful programming_language"

# If

def hey_ho?
  true
end

puts "let's go" if hey_ho?

# The try method

# good
user.id unless user.nil?

# better
user.try(:id)

# best - Since Ruby 2.3, we can use Ruby's safe navigation operator** (&.)** instead of Rails **try **method.
user&.id

# Double pipe equals (||=) / memoization

some_variable ||= 10
puts some_variable # => 10

some_variable ||= 99
puts some_variable # => 10



