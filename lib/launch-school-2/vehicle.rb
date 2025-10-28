# frozen_string_literal: true

require 'debug'
# This class is a superclass for all vehicles
class Vehicles
  attr_reader :color, :year, :model, :speed

  @@vehicles_made = 0

  def self.get_vehicles_made
    @@vehicles_made
  end

  def can_fly?
    false
  end

  def fly
    return "We'w flyin'" if can_fly?

    "We only drivin'"
  end

  def gas_mileage(gallons, miles)
    "The gas mileage is #{miles / gallons} gallons per mile."
  end

  def speed_up
    if speed.zero?
      self.speed += 5
    elsif speed < self.class::MAX_SPEED
      self.speed *= self.class::ACCELERATE_RATE
    end

    speed_text
  end

  def initialize(props)
    @year = props[:year]
    @color = props[:color]
    @model = props[:model]
    @speed = 0
    @@vehicles_made += 1
  end

  def speed_text
    puts "Current speed is #{speed}"
  end

  def brake
    self.speed *= self.class::BRAKE_RATE unless speed.zero?
    speed_text
  end

  def shut_off
    shut_off_max_speed = 0.5

    if speed < shut_off_max_speed
      self.speed = 0
      puts 'You shut your car off!'
    else
      puts "Cannot shut the car down: it's still moving too fast (#{speed})!
            The speed should be below #{shut_off_max_speed}"
    end
  end

  def spray_paint(color)
    self.color = color
    puts "Your car has been painted #{color}"
  end

  def pretty_info_color
    "Your car has color of #{color}"
  end

  def pretty_info_age
    "Your car is #{age} years old!"
  end

  def pretty_info_model
    "Your car model is #{model}"
  end

  def to_s
    "Current details of your #{self.class::VEHICLE_NAME} are: #{pretty_info_color}, #{pretty_info_age}, #{pretty_info_model}"
  end

  private

  def age
    Time.new.year - year.to_i
  end

  attr_writer :color, :year, :model, :speed
end
