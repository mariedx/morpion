class Game 
  attr_accessor :player1, :player2 

  def initialize
  puts ""
  puts "*********************************************"
  puts "*                  \u{1f349}                       *"
  puts "*  Bienvenue dans notre super Tic Tac Toe!  *"
  puts "*                  \u{1f60e}                       *"
  puts "*********************************************"
  puts ""
  puts ""
  puts "Quel est le nom du joueur 1 ?"
  print "> "
  name = gets.chomp
  @player1 = Player.new(name, "x")
  puts "Bonjour #{player1.name} \u{1f43c}, dame de coeur à toi l'honneur, tu commenceras avec les #{player1.symbol}."
  puts " "
  puts "-" * 30
  puts " "
  puts "Quel est le nom du joueur 2?"
  print "> "
  name = gets.chomp
  @player2 = Player.new(name, "o")
  puts "Hey #{player2.name} \u{1f344}, dame de pique à toi la suite avec les #{player2.symbol}."
  end
end
