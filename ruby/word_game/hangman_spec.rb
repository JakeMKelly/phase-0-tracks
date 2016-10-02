# Define a class
# 	write initialize method that takes player one's word as an argument
# 	declare an empty array for player two's guesses
# 	declare a game over variable
require_relative 'hangman'

describe Game do 
	let(:game) { Game.new("abcdefghijklmnopqrstuvwxyz") }

	it "has a readable secret word from player one" do
		expect(game.code_word).to eq "abcdefghijklmnopqrstuvwxyz"
	end	

	it "has a readable game-over status" do
		expect(game.is_over).to eq false
	end

	it "creates a readable array for player two's guesses" do 
		expect(game.guesses).to eq []
	end

	it "creates a guess limit from code word length" do 
		expect(game.guess_limit).to eq 26
	end

	it "splits player one's word into an array" do
		expect(game.code_word_array).to eq game.code_word.split("") 
	end

	it "does not count repeat guesses against player two's guess limit" do
		game.guessed_letter("a")
		game.guessed_letter("a")
		expect(game.guess_limit).to eq 25
		game.guessed_letter("b")
		game.guessed_letter("b")
		expect(game.guess_limit).to eq 24
	end

	it "prints the code word with '_' as a mask for each letter after each guess" do
		expect(game.masked_word).to eq "_" * 26
	end

	it "replaces '_' with the correct letter in correct position with each new guess" do
		game.guessed_letter("b")
		expect(game.code_word_printer("b")).to eq "_b________________________"
		game.guessed_letter("f")
		expect(game.code_word_printer("f")).to eq "_b___f____________________"
	end

	it "ends the game at the appropriate time and prints the appropriate end of game message" do
		game.masked_word = game.code_word
		game.game_status
		expect(game.is_over).to eq true
		expect(game.end_message).to eq "Congrats! You guessed #{game.code_word}!"
	end

	it "prints a taunting message if player two loses" do
		game.guess_limit = 0
		game.game_status
		expect(game.is_over).to eq true 
		expect(game.end_message).to eq "Booooooo. You couldn't guess #{game.code_word}? Better step up your vocab!"
	end
end


# 	write a method to allow for repeat guesses that takes player two's entire word as an argument, 
# 		if it does not match anything in the guesses array,		
# 			then store it in the guesses array
# 		if it does match a word already in the array, 
# 			do not store it
# 		if the length of the guesses array is less than the guess limit
# 			game over is false
# 		if the length of the guesses array is equal to the guess limit
# 			game over is true
	
# 	write a method that splits player two's guess into seperate letters and stores them in an array	
# 		split the string of player two's guess and store in a new array

# 	write a method that splits the letters of player one's word and stores each letter in an array
# 		pass that array into another output array that is "_" times the length of player one's word array

# 	write a method that prints a masked version of player one's word, with correct letter guesses shown
# 		print the array that has "_" times the length of player one's word array
# 			if  player two matched a letter, replace "_" with that letter at the corresponding index position
# 				replace the "_" in the array with the correctly guessed letter, then replace the array 
# 					if the replaced array does not contain "_"
# 						game over is true
# 					or else
# 						print the newly made array
# 			or else, 
# 				print player one's word array

# 	write a method that creates a guess limit
# 		declare a variable that take the number of letters in player one's word array and adds 2
# 		assign that number to a guess limit variable
	 	
# 	write a method that prints the end statement
# 		if player two guessed the word within the limit
# 			congratulate them and include player one's word
# 		or else, (player two hit limit without solving the word)
# 			print a taunting message that includes player one's word