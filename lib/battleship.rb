require './lib/messages'
require 'io/console'

require 'pry'

class BattleShip
  include Messages

  def initialize
    rows = 0
    cols = 0
    puts 'If you do not see Battleship in ascii art please resize your window until you do! 😀'

    until cols >= 86
      rows, cols = $stdout.winsize
    end

    puts Messages.welcome
  end

end
binding.pry
""
