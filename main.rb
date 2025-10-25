require_relative 'lib/my_car'

def test_my_car
  car = MyCar.new model: 'Toyota A35', color: 'White', year: '1987'
  car.speed_up
  car.speed_up
  car.brake
  car.speed_up
  car.shut_off
  car.brake
  car.brake
  car.brake
  car.shut_off
  car.pp_color
  car.spray_paint 'blue'
  car.pp_color
  car.pp_year
  car.pp_model
end

test_my_car
