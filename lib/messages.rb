module Messages

  def self.welcome
    'Welcome to battleship'
    " _______  _______  _______  _______  ___      _______  _______  __   __  ___   _______ 
|  _    ||   _   ||       ||       ||   |    |       ||       ||  | |  ||   | |       |
| |_|   ||  |_|  ||_     _||_     _||   |    |    ___||  _____||  |_|  ||   | |    _  |
|       ||       |  |   |    |   |  |   |    |   |___ | |_____ |       ||   | |   |_| |
|  _   | |       |  |   |    |   |  |   |___ |    ___||_____  ||       ||   | |    ___|
| |_|   ||   _   |  |   |    |   |  |       ||   |___  _____| ||   _   ||   | |   |    
|_______||__| |__|  |___|    |___|  |_______||_______||_______||__| |__||___| |___|    "
  end

  def self.instructions
    "What do you want to do?"
    "(p)lay, (i)nstructions, (q)uit?"
  end

  def self.computer_placed_ships
    "The computer has placed their ships, now it's your turn"
    "Your first ship is two units long, and the second is three units long."
    "The grid has A1 at the top left and D4 at the bottom right."
    ""
  end

  def self.place_large_ship
    "Place your large ship"
  end

  def self.place_small_ship
    "Place your small ship"
  end

  def self.overlap
    "You cannot place a ship there, you already have a ship there"
  end

  def self.invalid
    "This ship placement is invalid ❌, please re-input coordinates"
  end

  def self.attack
    "Choose a coordinate to fire at: 💢"
  end

  def self.invalid_attack
    "That is an invalid position ❌, please choose another position to fire at:"
  end

  def self.player_hit
    "Boom 💥! That's a hit! 🔥"
  end

  def self.player_miss
    "Splash! That's a miss! 😭"
  end

  def self.computer_hit
    "💥🔥 That's a hit! 😭"
  end

  def self.computer_miss
    "Splash!💦 That's a miss! 🎉🎊"
  end

  def self.small_ship_destroyed
    "🔥🔥🔥 SMALL SHIP DESTROYED 🔥🔥🔥"
  end

  def self.large_ship_destroyed
    "🔥🔥🔥 LARGE SHIP DESTROYED 🔥🔥🔥"
  end

  def self.win
    "You have vanquished your foes 🎉"
  end

  def self.lose
    "You have lost today.. 😭"
  end
end
