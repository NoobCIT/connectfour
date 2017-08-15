require_relative "../lib/connectfour.rb"

puts 'Welcome to a game of ConnectFour!'
puts 'Player 1, what is your name?'
name1 = gets.chomp
player1 = Connectfour::Player.new(name1, "\u26aa")
puts 'Player 2, what is your name?'
name2 = gets.chomp
player2 = Connectfour::Player.new(name2, "\u26ab")
puts 'First player to get 4 in a row, horizontally, vertically, or diagonally, wins!'
puts 'Lets start the game!'
players = [player1, player2]
game = Connectfour::Gameplay.new(players)
game.board.format_grid
while true
  puts game.solicit_move
  if game.valid_move == false
    redo
  end
  game.board.format_grid
  if game.win?
    puts "Congrats #{game.current_player.name}, you win!"
    exit
  end
  game.switch_players
end
