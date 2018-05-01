class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def rock_paper_scissors

    if (@player1 == "rock" && @player2 == "paper") || (@player2 == "rock" && @player1 == "paper")
      p "paper wins"

    elsif (@player1 == "paper" && @player2 == "scissors") || (@player2 == "paper" && @player1 == "scissors")
      p "scissors wins"

    elsif (@player1 == "rock" && @player2 == "scissors") || (@player2 == "rock" && @player1 == "scissors")
      p "rock wins"
    else
      p "draw"
    end

  end

end
