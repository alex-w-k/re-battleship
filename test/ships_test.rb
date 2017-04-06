gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipsTest < MiniTest::Test

  def test_can_ships_initialize
    ships = Ships.new
    assert_instance_of Ships, ships
  end

  def test_can_store_two_ships_positions
    ships = Ships.new

  end


end
