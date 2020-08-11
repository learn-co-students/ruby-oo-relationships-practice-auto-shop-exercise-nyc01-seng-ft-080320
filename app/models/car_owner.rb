class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def take_to_mechanic(car, mechanic)
    car.mechanic = mechanic
  end
    
  def cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    self.cars.map {|car| car.mechanic}.uniq
  end

  def self.average_number_of_cars
    self.all.sum {|owner| owner.cars.count/self.all.count.to_f}
  end

end
