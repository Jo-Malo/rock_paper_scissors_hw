require'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game1 = Game.new("rock", "scissors")
    @game2 = Game.new("rock", "paper")
    @game3 = Game.new("rock", "rock")
    @game4 = Game.new("scissors", "rock")
    @game5 = Game.new("scissors", "paper")
    @game6 = Game.new("scissors", "scissors")
    @game7 = Game.new("paper", "rock")
    @game8 = Game.new("paper", "scissors")
    @game9 = Game.new("paper", "paper")
  end

  def test_rock_vs_scissors__return_rock_wins
    answer = "rock wins"
    result = @game1.rock_paper_scissors
    assert_equal(answer, result)
  end

  def test_rock_vs_paper__return_paper_wins
    answer = "paper wins"
    result = @game2.rock_paper_scissors
    assert_equal(answer, result)
  end

  def test_paper_vs_scissors__return_draw
    answer = "draw"
    result = @game3.rock_paper_scissors
    assert_equal(answer, result)
  end

  def test_scissors_vs_rock__return_rock_wins
    answer = "rock wins"
    result = @game4.rock_paper_scissors
    assert_equal(answer, result)
  end

  def test_scissors_vs_paper__return_scissors_wins
    answer = "scissors wins"
    result = @game5.rock_paper_scissors
    assert_equal(answer, result)
  end

  def test_scissors_vs_scissors__return_draw
    answer = "draw"
    result = @game6.rock_paper_scissors
    assert_equal(answer, result)
  end

  def test_paper_vs_rock__return_paper_wins
    answer = "paper wins"
    result = @game7.rock_paper_scissors
    assert_equal(answer, result)
  end

  def test_paper_vs_scissors__return_scissors_wins
    answer = "scissors wins"
    result = @game8.rock_paper_scissors
    assert_equal(answer, result)
  end

  def test_paper_vs_paper__return_draw
    answer = "draw"
    result = @game9.rock_paper_scissors
    assert_equal(answer, result)
  end

end
