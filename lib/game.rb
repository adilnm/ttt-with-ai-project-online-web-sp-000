class Game
  WIN_COMBINATIONS=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  attr_accessor :board, :player_1, :player_2
  attr_reader:player_1
  
  def initialize(player_1 = Players::Human.new("X"),player_2 = Players::Human.new("O"),board=Board.new)
    @player_1 = player_1
    @player_2=player_2
    @board=board
  end
  
  def current_player
    self.board.turn_count.even? ? @player_1 : @player_2
  end
  
  def won?
    win=false
    WIN_COMBINATIONS.each do |win_comb|
      if(@board.cells[win_comb[0]]=="X" && @board.cells[win_comb[1]]=="X" && @board.cells[win_comb[2]]=="X")
        win=win_comb
      elsif(@board.cells[win_comb[0]]=="O" && @board.cells[win_comb[1]]=="O" && @board.cells[win_comb[2]]=="O")
        win=win_comb
     end
    end
    win
  end
  
  def draw?
<<<<<<< HEAD
    !won? && board.full?
  end
  
  def over?
    won? || draw? ? true : false
=======
    !won?
  end
  
  def over?
    if(@board.full?)
      true
    else 
      false
    end
>>>>>>> 59e2b61a9214d3ad623e6be6560b56d0c1703438
  end
  
  def winner
    if won?
      return @board.cells[won?[0]]
    end
  end
  
  def turn
    player=current_player
<<<<<<< HEAD
    puts"Player #{player.token}, please entre a number between 1 and 9"
=======
    puts"#{player}, please entre a number between 1 and 9"
>>>>>>> 59e2b61a9214d3ad623e6be6560b56d0c1703438
    input=player.move(board)
    if(!board.valid_move?(input))
      puts "That input is invalid"
      turn
    else
      board.update(input,player)
       board.display
    end
  end
  
  def play
<<<<<<< HEAD
     until over?
     self.turn
     end
     
     if won?
       puts"Congratulations #{winner}!"
     end
     
     if draw?
       puts"Cat's Game!"
     end
     
  end
    
end
=======
    until over?
      turn
    end

    if won?
      puts "\n"
      puts "Congratulations #{winner}!"
    elsif draw?
      puts "\n"
      puts "Cat's Game!"
    end
    board.display
  end
    
end





#learn spec/04_game_spec.rb
>>>>>>> 59e2b61a9214d3ad623e6be6560b56d0c1703438
