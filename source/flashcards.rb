require_relative 'parser'

# Main file for
class Card
  attr_reader :definition, :answer

  def initialize(new_card = {})
    @definition = new_card[:definition]
    @answer = new_card[:answer]

  end

  def is_correct?(user_response)
    if user_response == @answer
      true
    else
      false
    end
  end

  def to_s
     "#{definition}"
  end
end

class Deck

  attr_accessor :cards
  def initialize
    @cards = CreateCard.create_card
  end

  def pull_card
    pulled_card = @cards[@cards.length-1]
  end

  def discard
    @cards.pop
  end

end

