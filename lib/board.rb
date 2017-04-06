require 'pry'

class Board
  attr_reader :board

  def initialize
    @board = [['•', '1', '2', '3', '4'],
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

  def draw_board
    @board.map do |row|
      row.join('  ')
    end
  end

  

end

binding.pry
""
