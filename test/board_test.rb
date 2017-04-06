require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < Minitest::Test

  def setup
    @b = Board.new
  end

  def test_board_can_init
    assert_instance_of Board, @b
  end

  def test_board_is_empty_when_init
     
  end

end
