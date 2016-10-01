class Game
	attr_reader :code_word, :is_over, :guesses
	
	def initialize(code_word)
		@code_word = code_word
		@is_over = false
		@guesses = []
	end
end