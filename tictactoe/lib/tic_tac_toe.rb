class tictactoe

  def initialize
    @players = [Player.new('X'), Player.new('O')]
    board = Board.new
  end
  

def game_loop(move, move_number, players, board)
  while(move!='q' && move_number < 9) do
  player = move_number.even? ? players[0] : players[1]
  board.print
  puts "enter your move player #{player.mark}"
  move = gets.chomp
  result = board.make_move(move, player.mark)
  unless result == false 
    move_number += 1
    if board.winner
      puts "#{player.mark} is the Winner!"
      board.print
      break
    end
  end
 end
end

  def run
    move = nil
    move_number = 0

    gameloop(move, move_number, players)

      unless board.winner
        puts "No one won, it is a tie!"
      end
    puts "GAME OVER"
  end
  
end