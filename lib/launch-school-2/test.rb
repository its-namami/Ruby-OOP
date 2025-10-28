# frozen_string_literal: true

require_relative 'my_car'
require_relative 'my_truck'

# Test represents a class with methods to test other classes
class Test
  def self.my_car
    car = MyCar.new model: 'Toyota A36', color: 'White', year: '1987'
    3.times { car.speed_up }
    car.shut_off
    3.times { car.brake }
    car.shut_off
    car.spray_paint 'blue'
    puts car.gas_mileage 20, 5
    puts car.fly
    puts car
    MyCar.pretty_print_vehicless_made
  end

  def self.my_truck
    truck = MyTruck.new model: 'Toyota A36', color: 'White', year: '1987'
    3.times { truck.speed_up }
    truck.shut_off
    3.times { truck.brake }
    truck.shut_off
    truck.spray_paint 'blue'
    puts truck.gas_mileage 20, 5
    puts truck.fly
    puts truck
    MyTruck.pretty_print_vehicless_made
  end

  def to_s
    puts 'This is a test class with methods for calling predefined methods of other classes'
  end
end
