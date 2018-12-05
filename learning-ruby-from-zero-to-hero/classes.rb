class Vehicle
  def initialize(number_of_wheels, type_of_tank, seating_capacity, maximum_velocity)
    @number_of_wheels = number_of_wheels
    @type_of_tank = type_of_tank
    @seating_capacity = seating_capacity
    @maximum_velocity = maximum_velocity
  end

  def number_of_wheels
    @number_of_wheels
  end

  def set_number_of_wheels=(number)
    @number_of_wheels = number
  end
end

# vehicle = Vehicle.new

tesla_model_s = Vehicle.new(4, 'electric', 5, 250)

puts tesla_model_s
