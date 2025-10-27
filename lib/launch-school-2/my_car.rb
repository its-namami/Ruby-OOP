# frozen_string_literal: true

require_relative 'vehicle'

# MyCar represents a vehicle object that can speed up, slow down,
# and track its color, year, model, calculates its age, and can fly.
class MyCar < Vehicles
  ACCELERATE_RATE = 2.8
  BRAKE_RATE = 0.2
  MAX_SPEED = 250

  def self.to_s
    'This is MyCar class!'
  end

  def to_s
    "Current details of your car are: #{pretty_info_color}, #{pretty_info_year}, #{pretty_info_model}"
  end
end
