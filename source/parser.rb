require_relative 'flashcards'

module CreateCard
# Create cards for us to use.
  def self.create_card
    card_hash = []
    Parser.parse_file('flashcard_samples.txt').each_slice(2) do |definition, answer|
      card_hash << {:definition => definition, :answer => answer}
    end
    # watch your indents
      newCard_array = []
      # you've reimplemented #map here.
      card_hash.each do |card_object|
        newCard_array << Card.new(card_object)
      end
      newCard_array
  end
    # Parser.parse_file('flashcard_samples.txt').each_slice(2).map { |defn, answ| Card.new(definition: defn, answer: answ) }
end


module Parser
# I like how you've decoupled that data parsing from the Model creating. More of this!

  def self.parse_file(file)
    array = []
    File.open(file, 'r')  do |file|
      file.each_line do |row|
        array << row
      end
    end
    array
  end
end
