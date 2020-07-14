class Apartment

  attr_reader :number

  def initialize(apartment_details)
    @number = apartment_details[:number]
  end
end
