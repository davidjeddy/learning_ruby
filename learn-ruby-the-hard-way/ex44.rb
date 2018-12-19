puts "Inheritance:"

puts "\nfn() Implicit Inheritance:\n"

class Parent

  def implicit()
    puts "PARENT implicit()"
  end
end

class Child < Parent
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

puts "\n\nfn() override:\n"

class Parent

  def override()
    puts "PARENT override()"
  end
end

class Child < Parent
  def override()
    puts "CHILD override()"
  end
end

dad = Parent.new()
son = Child.new()

dad.override()
son.override()

puts "\n\nfn() Alter Before or After:\n"

class Parent
  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end

end

dad = Parent.new()
son = Child.new()

dad.altered()
son.altered()

puts "\n\nComposition:\n"

class Other

  def implicit()
    puts "OTHER implicit()"
  end

  def override()
    puts "OTHER override()"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class Child

  def initialize()
    @other = Other.new()
  end

  def implicit()
    @other.implicit()
  end

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    @other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()

puts "\n\nComposition via Mixins:\n"

module Other

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def Other.altered()
    puts "OTHER altered()"
  end
end

class Child
  include Other

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    Other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()