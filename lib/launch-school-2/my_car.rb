# frozen_string_literal: true

require_relative 'vehicle'
require_relative 'fliable'

# MyCar represents a vehicle object that can speed up, slow down,
# and track its color, year, model, calculates its age, and can fly.
class MyCar < Vehicles
  include Fliable

  VEHICLE_NAME = 'car'
  ACCELERATE_RATE = 2.8
  BRAKE_RATE = 0.2
  MAX_SPEED = 200
end
