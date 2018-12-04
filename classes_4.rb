class Person
  def initialize(name, age)
    @name = name
    @age  = age
  end
end

tk = Person.new("Leandro Tk", 24)

puts tk.name
