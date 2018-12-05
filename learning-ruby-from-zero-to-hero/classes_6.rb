class Car
  attr_accessor :number_of_wheels, :seating_capacity, :maximum_velocity

  def initialize(number_of_wheels, seating_capacity, maximum_velocity)
    @number_of_wheels = number_of_wheels
    @seating_capacity = seating_capacity
    @maximum_velocity = maximum_velocity
  end
end

my_car = Car.new(4, 5, 250)
puts my_car.number_of_wheels # 4
puts my_car.seating_capacity # 5
puts my_car.maximum_velocity # 250

class ElectricCar < Car
end

tesla_model_s = ElectricCar.new(4, 5, 250)
puts tesla_model_s.number_of_wheels # 4
puts tesla_model_s.seating_capacity # 5
puts tesla_model_s.maximum_velocity # 250

