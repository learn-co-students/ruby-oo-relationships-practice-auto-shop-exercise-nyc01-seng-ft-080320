class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Cars.all.select {|car| car.mechanic == self}
  end

  def car_owners_names
    self.cars.map {|car| car.owner}
  end

end
