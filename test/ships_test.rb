gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'

class ShipsTest < MiniTest::Test

  def test_can_ships_initialize
    ship = Ship.new(3)
    assert_instance_of Ship, ship
  end

  def test_ship_can_take_damage
  	s = Ship.new(3)
  	s.hit
  	assert_equal 2, s.hit_points
  end
end
