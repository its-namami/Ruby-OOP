require_relative 'mammal'
require_relative 'swimmable'

class Dog < Mammal
  include Swimmable
end
