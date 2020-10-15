require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/board'
require 'app/boardcase'
require 'app/game'
require 'app/player'

morpion = Game.new
myboard = Board.new
myboard.show_board

turn = 0
while turn < 10
  myboard.plays(morpion.player1) 
  myboard.show_board
  turn += 1
  break if turn == 9
  break if myboard.player_win(morpion.player1.symbol)
  myboard.plays(morpion.player2)
  myboard.show_board
  turn += 1
  break if turn == 9
  break if myboard.player_win(morpion.player2.symbol)
end
puts "match nul" if turn == 9
puts "#{morpion.player1.name} a gagné" if myboard.player_win(morpion.player1.symbol)
puts "#{morpion.player2.name} a gagné" if myboard.player_win(morpion.player2.symbol)