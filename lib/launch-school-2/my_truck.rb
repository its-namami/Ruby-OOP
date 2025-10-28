# frozen_string_literal: true

require_relative 'vehicle'

# MyTruck represents a vehicle object that can speed up, slow down,
# and track its color, year, and model. It also calculates its age.
class MyTruck < Vehicles
  VEHICLE_NAME = 'truck'
  ACCELERATE_RATE = 1.8
  BRAKE_RATE = 0.25
  MAX_SPEED = 130
end
