require './lib/messages'
require 'io/console'

require 'pry'

class BattleShip
  include Messages

  def initialize
    rows = 0
    cols = 0
    until cols >= 86
      rows, cols = $stdout.winsize
      puts "Please widen your terminal window"
    end

    Messages.welcome
  end

end
binding.pry
""
