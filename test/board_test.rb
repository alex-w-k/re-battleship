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

  def test_board_holds_small_ships
    @b.place_small_ship("A2", "A3")

    assert_equal "🚢", @b.board[1][2]
    assert_equal "🚢", @b.board[1][3]
  end

   def test_player_can_place_large_ship
    @b.place_large_ship("A2", "A4")

    assert_equal "⛴", @b.board[1][2]
    assert_equal "⛴", @b.board[1][3]
    assert_equal "⛴", @b.board[1][4]
  end

  def test_ship_coordinates_are_contiguous
    @b.place_small_ship("A2", "D4")

    assert_equal "🌊", @b.board[1][2]
    assert_equal "🌊", @b.board[4][4]
  end

  def test_ship_cannot_be_placed_over_ship
    @b.place_small_ship("A1", "A2")
    @b.place_small_ship("A2", "A3")

    assert_equal "🌊", @b.board[1][3]
  end

  def test_finds_middle
    assert_equal [2, 2], @b.find_large_ship_middle("A2", "C2")
  end

  def test_large_ship_cannot_be_placed_over_ship
    @b.place_large_ship("B1", "B3")
    @b.place_large_ship("A2", "C2")

    assert_equal "🌊", @b.board[3][2]
  end

  def test_finds_large_ship_middle
    @b.place_large_ship("A4", "C4")

    assert_equal "⛴", @b.board[2][4]
  end

  def test_ship_is_off_board
    @b.place_small_ship("A4", "A5")

    assert @b.check_if_off_board?("A4", "A5")
  end
end
