require './lib/ship'
require './lib/board'
require './messages'

class Player
  
  def initialize
    @ship_1          = Ship.new(2)
    @ship_2          = Ship.new(3)
    @ship_1_placed   = false
    @ship_2_placed   = false
    @ship_board      = Board.new
    @fired_board     = Board.new
    @number_of_shots = 0
  end

  def increase_shots
    @number_of_shots += 1
  end

  def place_small_ship(x, y)
    @ship_board.place_small_ship(x, y)
  end

  def place_large_ship(x, y)
    @ship_board.place_large_ship(x, y)
  end

end
