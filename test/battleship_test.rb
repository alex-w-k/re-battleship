require 'minitest/autorun'
require 'minitest/pride'
require './lib/battleship'

class BattleShipTest < Minitest::Test

  def setup
    @b = BattleShip.new
  end

  def test_battleship_can_init
    assert_instance_of BattleShip, @b
  end

end
