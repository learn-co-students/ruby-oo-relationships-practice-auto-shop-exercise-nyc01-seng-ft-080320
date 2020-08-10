require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
m1 = Mechanic.new("Mike", "Sport")
m2 = Mechanic.new("Steven", "Old")
co1 = CarOwner.new("Jordan")
co2 = CarOwner.new("Beverly")
c1 = Car.new("BMW", "X3", "Sport", co1, m1)
c2 = Car.new("Mercedes", "Sedan", "Old", co1, m2)
c3 = Car.new("Mercedes", "Sedan", "Old", co1, m2)

c2 = Car.new("Mercedes", "Sedan", "Old", co2, m2)


binding.pry
