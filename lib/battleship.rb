require './lib/messages'
require "./lib/computer"
require "./lib/human"
require 'io/console'

require 'pry'

class BattleShip
  attr_reader :player_1, :player_2, :current_player

  include Messages

  def initialize
    rows = 0
    cols = 0
    puts "If you do not see Battleship in ascii art please resize your window until you do! 😀 \n\n"
    until cols >= 86
      rows, cols = $stdout.winsize
    end
    @player_1 = Computer.new
    @player_2 = Human.new
    @current_player = @player_1
    start
  end

  def switch_player
    if @current_player == player_1
      @current_player = player_2
    else
      @current_player = player_1
    end
  end

  def other_player
    if current_player == player_1
      player_2
    else
      player_1
    end
  end

  def instructions
    puts Messages.instructions
  end

  def start
    system 'clear'
    puts Messages.welcome
    puts ""
    instructions
    response = gets.chomp
    play if response == 'p' || response == 'play'
    instructions if response == 'i' || response == 'instructions'
    quit if response == 'q' || response =='quit'
  end

  def play
    @player_1.place_ships
    @player_2.place_ships
    until @current_player.destroyed?
      Messages.switch_player(@current_player)
      @current_player.draw_board
      target = @current_player.fire_weapons
      if other_player.fired_at(target)
        Messages.hit(current_player)
        @current_player.track_hit(target)
      else
        Messages.miss(current_player)
        @current_player.track_miss(target)
      end
      if current_player.is_a?(Computer)
        result = @current_player.overlay(other_player)
        Board.draw_board(result)
      else
        @current_player.draw_board
      end
      @current_player.end_turn
      switch_player
    end
    Messages.win(other_player)
    exit 0
  end

  def quit
    exit 0
  end

end

b = BattleShip.new
