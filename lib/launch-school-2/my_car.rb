# frozen_string_literal: true

require_relative 'vehicles'

# MyCar represents a vehicle object that can speed up, slow down,
# and track its color, year, and model. It also calculates its age.
class MyCar < Vehicles
  attr_reader :color, :year, :model, :speed

  def gas_mileage(gas, mileage)
    super + ', called from MyCar Instance'
  end

  def initialize(props)
    @year = props[:year]
    @color = props[:color]
    @model = props[:model]
    @speed = 0
  end

  def speed_text
    puts "Current speed is #{speed}"
  end

  def speed_up
    self.speed = 20
    speed_text
  end

  def brake
    self.speed *= 0.2
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

  def pretty_info_year
    current_year = Time.new.year

    "Your car is #{current_year - year.to_i} years old!"
  end

  def pretty_info_model
    "Your car model is #{model}"
  end

  def self.to_s
    'This is MyCar class!'
  end

  def to_s
    "Current details of your car are: #{pretty_info_color}, #{pretty_info_year}, #{pretty_info_model}"
  end

  private

  attr_writer :color, :year, :model, :speed
end
