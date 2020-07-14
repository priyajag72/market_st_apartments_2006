require "minitest/autorun"
require "minitest/pride"
require "./lib/renter"
require "./lib/apartment"

class ApartmentTest < Minitest::Test

  def test_it_exists
    unit1 = Apartment.new
    assert_instance_of Apartment, unit1
  end

  #def test_it_has_attributes
  #end

end
