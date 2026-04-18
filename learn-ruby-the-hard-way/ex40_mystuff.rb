module MyStuff
  def MyStuff.apple()
      puts "I AM APPLES!"
  end

  # this is just a variable
  TANGERINE = "Living reflection of a dream"
end



class MyStuff

  attr_reader :tangerine

  def initialize()
      @tangerine = "And now a thousand years between" # @... is an instance var
  end

  def apple()
      puts "I AM CLASSY APPLES!"
  end

end

thing = MyStuff.new()
thing.apple()
puts thing.tangerine