require 'pry'

require '../app/player'
# require '../app/game'
require '../app/board'


class Index 

  def initialize
  puts "Quel est le nom du joueur 1 ?"
  print "> "
  name = gets.chomp
  player1 = Player.new(name, "╳")
  puts "Bonjour #{player1.name}, à toi l'honneur de commencer avec les #{player1.symbol}"
  puts " "
  puts "-" * 30
  puts " "
  puts "Quel est le nom du joueur 2?"
  print "> "
  name = gets.chomp
  player2 = Player.new(name, "◌")
  puts "Bonjour #{player2.name}, à toi la suite avec les #{player2.symbol}"
  end
end


morp = Index.new

binding.pry