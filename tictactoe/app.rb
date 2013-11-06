
class Player
attr_accessor :mark

  def initialize(mark)
    @mark = mark
  end
end

class Board
  def initialize
    @board = [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]
  end
  def print
    @board.each do |row|
      row_text = ''
      row.each do |column|
        mark_or_boarder = column ? column : '_'
        row_text += "#{mark_or_boarder}|"
      end
    puts row_text
    end
  end
  def make_move(move, mark)
    if move.match("top")
      column = 0
    elsif move.match("middle")
      column = 1
    elsif move.match("bottom")
      column = 2
    end
    
    if move.match("left")
      row = 0
    elsif move.match("center")
      row = 1
    elsif move.match("right")
      row = 2
    end
    
    if !(column && row)
      puts "Please enter correct move"
      return false 
    end
    
    @board[column][row] = mark
  end
end

players = [Player.new('X'), Player.new('O')]
board = Board.new

move = nil
move_number=0
while(move!='q') do
  player = move_number.even? ? players[0] : players[1]
  board.print
  puts "enter your move player #{player.mark}"
  move = gets.chomp
  result = board.make_move(move, player.mark)
  unless result == false 
    move_number += 1
  end
end
  puts "GAME OVER"
