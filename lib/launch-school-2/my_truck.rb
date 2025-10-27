# frozen_string_literal: true

require_relative 'vehicle'

# MyTruck represents a vehicle object that can speed up, slow down,
# and track its color, year, and model. It also calculates its age.
class MyTruck < Vehicles
  ACCELERATE_RATE = 1.8
  BRAKE_RATE = 0.25
  MAX_SPEED = 130

  def self.to_s
    'This is MyTruck class!'
  end

  def to_s
    "Current details of your car are: #{pretty_info_color}, #{pretty_info_year}, #{pretty_info_model}"
  end
end
