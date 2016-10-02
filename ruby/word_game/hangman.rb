class Game
	attr_reader :code_word, :is_over, :guesses, :code_word_array, :guess_limit

	def initialize(code_word)
		@code_word = code_word
		@is_over = false
		@guesses = []
		@guess_limit = @code_word.split("").length
		@code_word_array = @code_word.split("")
	end

	def guessed_letter(guess)
		@guess = guess 
		if !@guesses.include?(guess)
		@guesses << guess
		@guess_limit -= 1
		end		
	end
 # Work on this vvvv
	# def code_word_printer
	# 	@masked_word = "_" * @code_word_array.length
	# 	new_masked_word = []

	# 	@code_word_array.each do |letter|
	# 		if @guess = letter
	# 			new_masked_word << @code_word_array.index = letter
	# 		else
	# 			@code_word_array[index] = "_"
	# 		end
	# 		@masked_word.replace(new_masked_word)
	# 	end
	# end
	def winner_message
		"Congrats! You guessed #{@code_word}!"
	end

	def loser_message
		"Booooooo. You couldn't guess #{@code_word}? Better step up your vocab!"
	end
end