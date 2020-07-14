class Apartment

  attr_reader :number, :monthly_rent

  def initialize(apartment_details)
    @number = apartment_details[:number]
  end
end
