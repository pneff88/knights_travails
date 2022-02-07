require_relative "./board.rb"
require_relative "./knight.rb"

game = Board.new #uncomment 4-11 to get the test ready

game.knight_moves([3,3],[0,0])
puts ''
game.knight_moves([6,3],[0,0])
puts ''
game.knight_moves([0,0],[7,7])
