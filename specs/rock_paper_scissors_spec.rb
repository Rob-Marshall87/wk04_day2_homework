require 'minitest/autorun'
require_relative '../models/rock_paper_scissors'

class TestGame < Minitest::Test

  def setup
    @game1 = Game.new('rock', 'paper')
    @game2 = Game.new('rock', 'scissors')
    @game3 = Game.new('paper', 'rock')
    @game4 = Game.new('paper', 'scissors')
    @game5 = Game.new('scissors', 'paper')
    @game6 = Game.new('scissors', 'rock')
    @game7 = Game.new('rock', 'rock')
  end

  def test_rock_paper
    assert_equal("PLAYER2!!", @game1.round)
  end

  def test_rock_scissors
    assert_equal("PLAYER1!!", @game2.round)
  end

  def test_paper_rock
    assert_equal("PLAYER1!!", @game3.round)
  end

  def test_paper_scissors
    assert_equal("PLAYER2!!", @game4.round)
  end

  def test_scissors_paper
    assert_equal("PLAYER1!!", @game5.round)
  end

  def test_scissors_rock
    assert_equal("PLAYER2!!", @game6.round)
  end

  def test_draw
    assert_equal("It's a draw.", @game7.round )
  end

end
