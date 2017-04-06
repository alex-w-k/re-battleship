module Messages

  def self.welcome
    puts "Welcome to battleship"
    puts " _______  _______  _______  _______  ___      _______  _______  __   __  ___   _______ 
|  _    ||   _   ||       ||       ||   |    |       ||       ||  | |  ||   | |       |
| |_|   ||  |_|  ||_     _||_     _||   |    |    ___||  _____||  |_|  ||   | |    _  |
|       ||       |  |   |    |   |  |   |    |   |___ | |_____ |       ||   | |   |_| |
|  _   | |       |  |   |    |   |  |   |___ |    ___||_____  ||       ||   | |    ___|
| |_|   ||   _   |  |   |    |   |  |       ||   |___  _____| ||   _   ||   | |   |    
|_______||__| |__|  |___|    |___|  |_______||_______||_______||__| |__||___| |___|    "
  end

  def instructions
    puts "What do you want to do?"
    puts "(p)lay, (i)nstructions, (q)uit?"
  end

  def computer_placed_ships
    puts "The computer has placed their ships, now it's your turn"
    puts "Your first ship is two units long, and the second is three units long."
    puts "The grid has A1 at the top left and D4 at the bottom right."
    puts ""
  end

  def place_large_ship
    puts "Place your large ship"
  end

  def place_small_ship
    puts "Place your small ship"
  end

  def overlap
    puts "You cannot place a ship there, you already have a ship there"
  end

  def invalid
    puts "This ship placement is invalid ❌, please re-input coordinates"
  end

  def attack
    puts "Choose a coordinate to fire at: 💢"
  end

  def invalid_attack
    puts "That is an invalid position ❌, please choose another position to fire at:"
  end

  def player_hit
    puts "Boom 💥! That's a hit! 🔥"
  end

  def player_miss
    puts "Splash! That's a miss! 😭"
  end

  def computer_hit
    puts "💥🔥 That's a hit! 😭"
  end

  def computer_miss
    puts "Splash!💦 That's a miss! 🎉🎊"
  end

  def small_ship_destroyed
    puts "🔥🔥🔥 SMALL SHIP DESTROYED 🔥🔥🔥"
  end

  def large_ship_destroyed
    puts "🔥🔥🔥 LARGE SHIP DESTROYED 🔥🔥🔥"
  end

  def win
    puts "You have vanquished your foes 🎉"
  end

  def lose
    puts "You have lost today.. 😭"
  end


end
