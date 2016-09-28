class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
	end

	def gender_ethnicity(gender, ethnicity)
		puts "#{@gender}, #{@ethnicity}"
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"	
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def ranker_method
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def age_method
		@age = 0
	end
end

# kringle = Santa.new
# kringle.speak
# kringle.eat_milk_and_cookies("brookie")
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
