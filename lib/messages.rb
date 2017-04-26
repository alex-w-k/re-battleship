module Messages

  def self.welcome
    "Welcome to battleship\n
 _______  _______  _______  _______  ___      _______  _______  __   __  ___   _______ 
|  _    ||   _   ||       ||       ||   |    |       ||       ||  | |  ||   | |       |
| |_|   ||  |_|  ||_     _||_     _||   |    |    ___||  _____||  |_|  ||   | |    _  |
|       ||       |  |   |    |   |  |   |    |   |___ | |_____ |       ||   | |   |_| |
|  _   | |       |  |   |    |   |  |   |___ |    ___||_____  ||       ||   | |    ___|
| |_|   ||   _   |  |   |    |   |  |       ||   |___  _____| ||   _   ||   | |   |    
|_______||__| |__|  |___|    |___|  |_______||_______||_______||__| |__||___| |___|    "
  end

  def self.instructions
    "What do you want to do?\n(p)lay, (i)nstructions, (q)uit?"
  end

  def self.computer_placed_ships
    puts "The computer has placed their ships, now it's your turn"
    puts "Your first ship is two units long, and the second is three units long."
    puts "The grid has A1 at the top left and D4 at the bottom right."
    puts ""
  end

  def self.place_large_ship
    puts "Place your large ship"
  end

  def self.place_small_ship
    puts "Place your small ship"
  end

  def self.switch_player(player)
    if player.is_a?(Human)
      puts "Examine your map. Choose the target carefully."
      puts ""
    else
      puts "Prepare for battle."
      puts ""
    end
  end

  def self.overlap
    puts "You cannot place a ship there, you already have a ship there"
  end

  def self.invalid
    puts "This ship placement is invalid ❌, please re-input coordinates"
  end

  def self.attack
    puts "Choose a coordinate to fire at: 💢"
  end

  def self.invalid_attack
    puts "That is an invalid position ❌, please choose another position to fire at:"
  end

  def self.miss(player)
    if player.is_a?(Human)
      puts "Splash! That's a miss! 😭"
      puts ""
    else
      puts "Splash!💦 That's a miss! 🎉🎊"
      puts ""
    end
  end

  def self.hit(player)
    if player.is_a?(Human)
      puts "Boom 💥! That's a hit! 🔥"
      puts ''
    else
      puts "💥🔥 That's a hit! 😭"
    end
  end

  def self.end_turn
    puts "You have made your choice. Press enter now."
  end

  def self.small_ship_destroyed
    puts "🔥🔥🔥 SMALL SHIP DESTROYED 🔥🔥🔥"
  end

  def self.large_ship_destroyed
    puts "🔥🔥🔥 LARGE SHIP DESTROYED 🔥🔥🔥"
  end

  def self.report_target(target)
    puts "I fired at #{target}."
    puts ""
  end

  def self.win(player)
    if player.is_a?(Human)
      puts "You have vanquished your foes 🎉"
    else
      puts "You have lost today.. 😭"
    end
  end

  def self.not_enough
    puts "You didn't enter a second coordinate, please try again"
  end


end
