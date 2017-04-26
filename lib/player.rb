require './lib/ship'
require './lib/board'
require './lib/messages'

class Player
  attr_reader :ship_1, :ship_2, :ship_board, :fired_board, :number_of_shots
  
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

  def place_small_ship(x, y = nil)
    ship_board.place_small_ship(x, y)
  end

  def place_large_ship(x, y=nil)
    ship_board.place_large_ship(x, y)
  end

  def draw_board
    ship_board.draw_fired_board
  end

  def track_hit(target)
    ship_board.track_shots_fired(target, 'hit')
  end

  def track_miss(target)
    ship_board.track_shots_fired(target, 'miss')
  end

  def fired_at(coordinate)
    if ship_board.find_board_location(coordinate) == "🚢"
      ship_1.hit
      if ship_1.destroyed?
        Messages.small_ship_destroyed
      end
      true
    elsif ship_board.find_board_location(coordinate) == "⛴"
      ship_2.hit
      if ship_2.destroyed?
        Messages.large_ship_destroyed
      end
      true
    else
      false
    end
  end

  def destroyed?
    @ship_1.destroyed? && @ship_2.destroyed?
  end

  def end_turn

  end

  def overlay(other_player)
    ship_board.overlay(other_player.ship_board)
  end

end
