require './lib/player'

class Human < Player

  def get_input
    gets.chomp.split(' ')
  end

  def place_small_ship
    until @small_ship_placed
      Message.place_small_ship
      small_first, small_second = get_input
      @small_ship_placed = @ship_board.place_small_ship(small_first, small_second)
    end
    @ship_board.draw_board
  end

end

