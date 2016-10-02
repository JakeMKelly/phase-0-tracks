class Game
	attr_reader :code_word, :is_over, :guesses, :code_word_array, :guess_limit
	attr_reader :masked_word
	def initialize(code_word)
		@code_word = code_word
		@is_over = false
		@guesses = []
		@guess_limit = @code_word.split("").length
		@code_word_array = @code_word.split("")
		@masked_word = "_" * @code_word_array.length
	end

	def guessed_letter(guess)
		@guess = guess 
		if !@guesses.include?(guess)
		@guesses << guess
		@guess_limit -= 1
		end		
	end
 # Work on this vvvv
	def code_word_printer
		new_masked_word = []

		@code_word_array.each do |letter|
			if @guess = letter
				new_masked_word << letter
			else
				new_masked_word << "_"
			end
		end
	end

	def winner_message
		"Congrats! You guessed #{@code_word}!"
	end

	def loser_message
		"Booooooo. You couldn't guess #{@code_word}? Better step up your vocab!"
	end
end