require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

anson = CarOwner.new("Anson")
bob = CarOwner.new("Bob")

ferrari = Car.new(anson, "Ferrari", "488 GTB", "Sports Cars")
bmw = Car.new(anson, "BMW", "330i", "Sports Cars")
merc = Car.new(bob, "Mercedes", "E-Class", "Luxury Sedans")

jess = Mechanic.new("Jess", "Sports Cars")




binding.pry
