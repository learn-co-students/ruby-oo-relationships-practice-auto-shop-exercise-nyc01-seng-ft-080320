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

  def cars
    Car.all.select do |car|
      car.car_owner == self
    end
  end

  def mechanics
    self.cars.map do |car|
      car.mechanic
    end
  end

  def self.average_number_of_cars
    owned = CarOwner.all.map do |car_owner|
      car_owner.cars.count
    end
    length = owned.length.to_f
    owned = owned.sum.to_f
    owned/length
  end

end
