class Building

  attr_reader :units, :renters

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

end
