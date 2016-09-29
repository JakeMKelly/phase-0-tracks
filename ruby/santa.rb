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
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

while santas.length <= 15 do 
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
end
p santas
p santas.length