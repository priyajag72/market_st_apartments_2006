require "minitest/autorun"
require "minitest/pride"
require "./lib/renter"
require "./lib/apartment"
require "./lib/building"

class BuildingTest < Minitest::Test

  def test_it_exists
    building = Building.new
    assert_instance_of Building, building
  end

  def test_it_has_attributes
    building = Building.new
    assert_equal [], building.units
  end

  def test_it_can_add_units
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    assert_equal [unit1], building.units
    building.add_unit(unit2)
    assert_equal [unit1, unit2], building.units
  end

  def test_it_can_add_renters
    renter1 = Renter.new("Aurora")
    renter2 = Renter.new("Tim")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building = Building.new
    building.add_unit(unit1)
    unit1.add_renter(renter1)
    assert_equal ["Aurora"], building.renters
    building.add_unit(unit2)
    unit2.add_renter(renter2)
    assert_equal ["Aurora", "Tim"], building.renters
  end

  def test_it_can_calculate_average_rent
    renter1 = Renter.new("Aurora")
    renter2 = Renter.new("Tim")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building = Building.new

    building.add_unit(unit1)
    unit1.add_renter(renter1)
    building.add_unit(unit2)
    unit2.add_renter(renter2)

    assert_equal 1099.5, building.average_rent
  end

  # ITERATION 3

  def test_it_can_check_units_are_rented
    renter1 = Renter.new("Spencer")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 1, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
    building = Building.new

    building.add_unit(unit1)
    building.add_unit(unit2)
    building.add_unit(unit3)

    assert_equal [], building.rented_units
  end

end
