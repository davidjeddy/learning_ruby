puts Math::PI # > 3.141592653589793

puts Math.sqrt(9) # 3.0

module Skill
  def average_speed
    puts "My average speed is 20mph"
  end
end

class RunnerAthlete
  include Skill

  def initialize(name)
    @name = name
  end
end

mohamed = RunnerAthlete.new("Mohamed Farah")
puts mohamed.average_speed # "My average speed is 20mph"

