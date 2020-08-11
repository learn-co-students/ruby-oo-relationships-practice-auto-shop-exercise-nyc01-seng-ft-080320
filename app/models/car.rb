class Car

  attr_reader :make, :model, :owner, :classification
  attr_accessor :mechanic
  @@all = []

  def initialize(owner, make, model, classification)
    @owner = owner
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map {|car| car.classification}
  end

  def self.find_mechanics(classification)
    Mechanic.all.find_all {|mech| mech.specialty == classification}
  end

end
