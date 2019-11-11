require './question'
require './player'
require './game'

puts "=================="
puts "MATH GUESSING GAME"
puts "=================="

puts "Player 1 name: "
p1 = gets.chomp

puts "Player 2 name: "
p2 = gets.chomp



player1 = Player.new(p1)
player2 = Player.new(p2)

puts "#{player1} and #{player2} playing"

game1 = Game.new(player1, player2)

while player1.alive? && player2.alive? do 
  if(game1.current_player.alive?)


    puts ""
    puts "================="
    puts "===BEGIN ROUND==="
    puts "================="

    puts "==PLAYER 1 TURN=="
    puts ""

    question = Question.new
    puts  "#{game1.current_player}: #{question.query}"
    answer = gets.chomp.to_i

    if(question.right_answer?(answer))
      puts "That's right!"
    else
      puts "Wrong answer!"
      game1.current_player.lose_life
    end

    game1.switch_current
  end

  if(game1.current_player.alive?)


    puts ""
    puts "==PLAYER 2 TURN=="
    puts ""

    question = Question.new
    puts  "#{game1.current_player}: #{question.query}"
    answer = gets.chomp.to_i

    if(question.right_answer?(answer))
      puts "That's right!"
    else
      puts "Wrong answer!"
      game1.current_player.lose_life
    end

    game1.switch_current




    

   



    puts "================="
    puts "====END ROUND===="
    puts "================="

    puts ""

    puts "#{player1} has #{player1.lives} lives, #{player2} has #{player2.lives} lives"

    puts ""


  end




end

game1.game_over




