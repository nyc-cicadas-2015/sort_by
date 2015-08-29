require_relative '../source/flashcards'


describe Card do
  card_info = {:definition => "Describe some crazy thing", :answer => "this is crazy"}
  let(:card) { Card.new(card_info) }

  describe "#initialize" do
    it "should initialize as a kind of card" do
      expect(card).to be_a_kind_of(Card)
    end

    it "should initialize as a kind of hash" do
      expect(card_info).to be_a_kind_of(Hash)
    end

    it "it should have the proper attributes" do
      expect(card).to have_attributes(:definition => "Describe some crazy thing", :answer => "this is crazy")
    end
  end

  describe "#to_s" do
    it "should create a string of the definition" do
      expect(card.to_s).to eq("Describe some crazy thing")
    end
  end

  describe "#is_correct?" do
    it "should return true if the user gives a correct answer" do
      expect(card.is_correct?("this is crazy")).to eq(true)
    end

    it "should return false if the user gives an incorrect answer" do
      expect(card.is_correct?("this ain't crazy")).to eq(false)
    end

  end
end


describe Deck do

  let(:our_deck) {Deck.new }
  describe '#initialize' do
    it 'should initialize as a kind of deck' do
      expect(our_deck).to be_a_kind_of(Deck)
    end
    it "should initialize as a kind of Array of hashes" do
      expect(our_deck).to be_a_kind_of(Array)
    end
    # it "it should have the proper attributes" do
    #   expect(card).to have_attributes(:definition, :answer)
    # end
  end
end
