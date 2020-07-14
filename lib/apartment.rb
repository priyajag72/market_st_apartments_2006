class Apartment

  attr_reader :number, :monthly_rent, :bathrooms

  def initialize(apartment_details)
    @number = apartment_details[:number]
    @monthly_rent = apartment_details[:monthly_rent]
    @bathrooms = apartment_details[:bathrooms]
  end
end
