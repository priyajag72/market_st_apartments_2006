require "minitest/autorun"
require "minitest/pride"
require "./lib/renter"
require "./lib/apartment"
require "./lib/building"

class BuildingTest < Minitest::Test

  def test_it_exists
    assert_instance_of Building, building
  end

  #def test_it_has_attributes
  #end

end
