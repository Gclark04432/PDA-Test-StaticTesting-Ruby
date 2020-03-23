require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ('./card_game.rb')
require_relative ('./card.rb')

class TestCardGame < Minitest::Test

  def setup
      @cardGame = CardGame.new()

      @card1 = Card.new("Hearts", 7)
      @card2 = Card.new("Spades", 8)
      @card3 = Card.new("Clubs", 1)
  end

  def test_can_get_card_value
    assert_equal(7, @card1.value)
  end

  def  test_can_return_false_if_not_ace
    assert_equal(false, @cardGame.checkforAce(@card2))
  end

  def  test_can_return_true_if_is_ace
    assert_equal(true, @cardGame.checkforAce(@card3))
  end

  def test_can_return_which_card_has_higher_value
    assert_equal(@card2, @cardGame.highest_card(@card1, @card2))
  end

  def test_can_return_total_cards_value
    assert_equal("You have a total of 16", CardGame.cards_total([@card1, @card2, @card3]))
  end

end
