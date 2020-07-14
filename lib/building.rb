class Building

  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    @renters = []
    @renters << @units[0].renter.name
  end

end
