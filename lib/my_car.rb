# frozen_string_literal: true

# MyCar represents a vehicle object that can speed up, slow down,
# and track its color, year, and model. It also calculates its age.
class MyCar
  attr_reader :color, :year, :model, :speed

  def initialize(props)
    @year = props[:year]
    @color = props[:color]
    @model = props[:model]
    @speed = 0
  end

  def speed_text
    puts "Speed is now #{speed}"
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

  def pp_color
    puts "Your car has color of #{color}"
  end

  def pp_year
    current_year = Time.new.year

    puts "Your car is #{current_year - year.to_i} years old!"
  end

  def pp_model
    puts "Your car model is #{model}"
  end

  private

  attr_writer :color, :year, :model, :speed
end
