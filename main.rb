# frozen_string_literal: true

require_relative 'lib/my_car'

def test_my_car
  car = MyCar.new model: 'Toyota A36', color: 'White', year: '1987'
  3.times { car.speed_up }
  car.shut_off
  3.times { car.brake }
  car.shut_off
  car.pp_color
  car.spray_paint 'blue'
  car.pp_color
  car.pp_year
  car.pp_model
end

test_my_car
