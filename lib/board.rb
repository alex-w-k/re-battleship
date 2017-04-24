
require './lib/messages'

class Board
  attr_reader :board, :fired

  def initialize
    @board = [['•', '1', '2', '3', '4'],
              ['A', '🌊', '🌊', '🌊', '🌊'],
              ['B', '🌊', '🌊', '🌊', '🌊'],
              ['C', '🌊', '🌊', '🌊', '🌊'],
              ['D', '🌊', '🌊', '🌊', '🌊']]
    @fired = [['•', '1', '2', '3', '4'],
              ['A', '🌊', '🌊', '🌊', '🌊'],
              ['B', '🌊', '🌊', '🌊', '🌊'],
              ['C', '🌊', '🌊', '🌊', '🌊'],
              ['D', '🌊', '🌊', '🌊', '🌊']]

    @hit   = '💥'
    @miss  = '❌'
  end

  def border
    '+=========+'
  end

  def draw_ship_board
    @board.map do |row|
      row.join('  ')
    end
  end

  def draw_fired_board
    @fired.map do |row|
      row.join(' ')
    end
  end

  def check_location(row, column)
    @board[row][column] != "🌊"
  end

  def row(letter)
    {"A" => 1, "B" => 2, "C" => 3, "D" => 4}.fetch(letter.upcase, 0)
  end

  def find_board_location(location)
    letter, number = location.split('')
    @board[row(letter)][number.to_i]
  end

  def target_is_on_board?(target)
    target = target.chars
    row(target[0]).between?(1, 4) && target[1].to_i.between?(1, 4)
  end

  def small_ship_valid?(x, y)
    ((row(x[0]) - row(y[0])).abs == 1 && (x[1].to_i - y[1].to_i).abs == 0) ||
    ((row(x[0]) - row(y[0])).abs == 0 && (x[1].to_i - y[1].to_i).abs == 1)
  end

   def large_ship_vertical_valid?(x, y)
    (row(x[0]) - row(y[0])).abs == 2 && (x[1].to_i - y[1].to_i).abs == 0
  end

  def large_ship_horizontal_valid?(x, y)
    (row(x[0]) - row(y[0])).abs == 0 && (x[1].to_i - y[1].to_i).abs == 2
  end


  def find_large_ship_middle(x, y)
    if large_ship_horizontal_valid?(x, y)
      [row(y[0]), ((x[1].to_i - y[1].to_i) / 2) + y[1].to_i]
    elsif large_ship_vertical_valid?(x, y)
      [((row(x[0]) - row(y[0])) / 2) + row(y[0]), y[1].to_i]
    end
  end

  def place_small_ship(x, y)
    x = x.chars
    y = y.chars
    if check_if_off_board?(x, y)
      Messages.invalid
    elsif check_for_small_ship(x, y)
      Messages.overlap
    else
      if small_ship_valid?(x, y)
        place(x[0], x[1], "🚢")
        place(y[0], y[1], "🚢")
        true
      else
        Messages.overlap
      end
    end
  end

  def place_large_ship(x, y)
    x = x.chars
    y = y.chars
    if check_if_off_board?(x, y)
      Messages.invalid
    elsif check_for_big_ship(x, y)
      Messages.overlap
    elsif large_ship_vertical_valid?(x, y) || large_ship_horizontal_valid?(x, y)
      place(x[0], x[1], "⛴")
      place(y[0], y[1], "⛴")
      middle = find_large_ship_middle(x, y)
      set_ship(middle[0], middle[1], "⛴")
      true
    else
      Messages.invalid
    end
  end

  def check_if_off_board?(x, y)
    x[1].to_i > 4 || y[1].to_i > 4 ||
    x[1].to_i < 1 || y[1].to_i < 1 ||
    row(x[0]) > 4 || row(y[0]) > 4 ||
    row(x[0]) < 1 || row(y[0]) < 1
  end

  def check_for_small_ship(x, y)
    check_location(row(x[0]), x[1].to_i) ||
    check_location(row(y[0]), y[1].to_i)
  end

  def check_for_big_ship(x, y)
    middle = find_large_ship_middle(x, y)
    if !middle.nil?
      check_location(row(x[0]), x[1].to_i) ||
      check_location(row(y[0]), y[1].to_i) ||
      check_location(middle[0], middle[1])
    end
  end

  def check_location(row, column)
    @board[row][column] != "🌊"
  end

  def set_ship(row, column, tile)
    @board[row][column] = tile
  end

  def set_shot_history(row, column, tile)
    @shots_fired_board[row][column] = tile
  end

  def place(letter, number, tile)
    set_ship(row(letter), number.to_i, tile)
  end
end
