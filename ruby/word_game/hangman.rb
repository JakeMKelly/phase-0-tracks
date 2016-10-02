class Game
	attr_reader :code_word, :is_over, :guesses, :code_word_array, :end_message
	attr_accessor :masked_word, :guess_limit 
	def initialize(code_word)
		@code_word = code_word
		@is_over = false
		@guesses = []
		@code_word_array = @code_word.split("")
		@guess_limit = @code_word_array.length
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
		# @guess_limit -= 1
		@masked_word = new_masked_word.join
		p new_masked_word.join
	end

	def game_status
		if @masked_word == @code_word
			p @end_message = "Congrats! You guessed #{@code_word}!"
			@is_over = true
		elsif @guess_limit == 0
			p @end_message = "Booooooo. You couldn't guess #{@code_word}? Better step up your vocab!"
			@is_over = true
		else
			@is_over = false
		end
	end
end


puts "Welcome to the guessing game!"
puts "Player One, please enter your secret word:"
code_word = gets.chomp
game = Game.new(code_word)
puts "OK Player Two, Here's a look at the secret word:"
puts "#{game.masked_word}"
until game.is_over
	puts "Now enter your guess at a letter."
	guess = gets.chomp
	game.guessed_letter(guess)
	game.code_word_printer(guess)
	game.game_status
end