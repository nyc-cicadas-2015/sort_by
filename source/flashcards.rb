require_relative 'parser'

# Main file for
class Card
  attr_reader :definition, :answer

  def initialize(new_card = {})
    @definition = new_card[:definition] # start setting defaults. it's a good habit to get into
    @answer = new_card[:answer]

  end

  def is_correct?(user_response)
    # just `user_response == @answer`
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
