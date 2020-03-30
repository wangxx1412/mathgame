require "./questions"
require "./player"

# Initalize two players

player1 = Player.new("1")
player2 = Player.new("2")

def turn(player)
  question = Question.new(player.name)
  question.ask
  question.ans
  player.change_life(question.score)
end

while (player1.player_life != 0) && (player2.player_life != 0)
  turn(player1)
  puts "P#{player1.name}: #{player1.player_life}/3 vs P#{player2.name}: #{player2.player_life}/3"
  if player1.player_life == 0
    puts "----- GAME OVER -----"
  else
    puts "----- NEW TURN -----"
  end

  if(player1.player_life !=0)
    turn(player2)
    puts "P#{player1.name}: #{player1.player_life}/3 vs P#{player2.name}: #{player2.player_life}/3"
    if player2.player_life == 0
      puts "----- GAME OVER -----"
    else
      puts "----- NEW TURN -----"
    end
  end

end

if (player1.player_life == 0) || (player2.player_life == 0)
  if player1.player_life == 0
    puts "Player #{player2.name} wins with a score of #{player2.player_life}/3"
  else
    puts "Player #{player1.name} wins with a score of #{player1.player_life}/3"
  end
end