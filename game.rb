

class Game

  attr_reader :current_player, :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def switch_current
    if(@current_player == @player1)
      @current_player = @player2
    else 
      @current_player = @player1
    end
  end

  def game_over
    puts "Game over!"
    if (@player1.lives > 0)
      puts "#{@player1.id} wins with #{player1.lives} lives!"
    elsif (@player2.lives > 0)
      puts "#{@player2.id} wins with #{player2.lives} lives!"
    else
      puts "It's a draw!"
    end
      
  end




end