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
		@correct_guess = []
	end

	def guessed_letter(guess)
		@guess = guess 
		if !@guesses.include?(guess)
		@guesses << guess
		@guess_limit -= 1
		end		
	end

	def code_word_printer(guess)
		new_masked_word = []
		@code_word_array.each do |letter|
			if letter == @guess
				@correct_guess << letter 
				new_masked_word << letter
			elsif @correct_guess.include?(letter)
				new_masked_word << letter
			else
				new_masked_word << "_"
			end
		end
		@guess_limit -= 1
		new_masked_word.join
	end

	def winner_message
		if new_masked_word.join == @code_word
			p "Congrats! You guessed #{@code_word}!"
			@is_over
		end
	end

	def loser_message
		if @guess_limit == 0
			p "Booooooo. You couldn't guess #{@code_word}? Better step up your vocab!"
			@is_over
		end
	end
end