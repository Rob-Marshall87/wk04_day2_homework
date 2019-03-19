

class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def round()
    return "PLAYER2!!"  if @player1 == "rock" && @player2 == "paper"
    return "PLAYER1!!"  if @player1 == "rock" && @player2 == "scissors"
    return "PLAYER1!!"  if @player1 == "paper" && @player2 == "rock"
    return "PLAYER2!!"  if @player1 == "paper" && @player2 == "scissors"
    return "PLAYER1!!"  if @player1 == "scissors" && @player2 == "paper"
    return "PLAYER2!!"  if @player1 == "scissors" && @player2 == "rock"
    return "It's a draw."  if @player1 ==  @player2
  end
end
