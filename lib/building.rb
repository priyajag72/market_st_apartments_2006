class Building

  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    renters_in_units = []
    @units.select do |unit|
      renters_in_units << unit.renter.name
    end
    renters_in_units
  end

end
