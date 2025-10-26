# frozen_string_literal: true

require_relative 'lib/launch-school-2/test'
require_relative 'lib/launch-school-3/dog'
require_relative 'lib/launch-school-3/cat'

# Test.my_car
doggo = Dog.new
puts "Doggo: #{doggo.swim}"
catto = Cat.new
puts "Catto: #{catto.swim}"
