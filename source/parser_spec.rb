require_relative '../source/parser.rb'

describe Parser  do

  describe "#parse_file" do
    it "should parse each pair as a array of hashes" do
      expect(Parser.parse_file("../source/flashcard_samples.txt")).to be_a_kind_of(Array)
    end
  end

end



# describe CreateCard  do

#   let (:parser) {Parser.get_cards_from_file("../source/flashcard_samples.txt")}

#   describe "#create_card" do
#     it "should parse each pair as a hash" do
#       expect(CreateCard.create_card(parser)).to be_a_kind_of(Hash)
#     end
#   end

# end
