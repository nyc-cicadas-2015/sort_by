require_relative 'flashcards'
require_relative 'parser'


puts "Hi, Welcome to the flashcard game! Wanna Play?! (Yes or No)"
puts "Type Quit to quit"

user_input = gets.chomp

if user_input == "Yes"
  play_game = Deck.new
else
  abort ("Bye!!")
end

puts game_card = play_game.pull_card
user_guess = gets.chomp+("\n")

while user_guess != ("QUIT"+ "\n") || play_game.cards.length != 0

  while game_card.is_correct?(user_guess) != true
    if user_guess == ("QUIT"+ "\n")
      abort ("Bye!!!")
    else
      puts "try again, please..."
      user_guess = gets.chomp+("\n")
    end
  end

  puts "That's correct"
  play_game.discard
  puts "Next Card!"
  puts game_card = play_game.pull_card
  user_guess = gets.chomp+("\n")
end
