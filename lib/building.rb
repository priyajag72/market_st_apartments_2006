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

  def average_rent
    rent_from_units = @units.map do |unit|
      unit.monthly_rent
    end
    rent_from_units.sum / rent_from_units.size.to_f
  end

end
