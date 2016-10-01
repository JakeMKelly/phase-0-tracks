class Santa
	attr_reader :ethnicity, :age
	attr_accessor :gender

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

	def reindeer_ranker
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def current_age(age = 0)    
		@age = age
	end

	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at(bad_reindeer)
		@reindeer_ranking.delete(bad_reindeer)
		@reindeer_ranking.push(bad_reindeer)
	end
end

# kringle = Santa.new
# kringle.speak
# kringle.eat_milk_and_cookies("brookie")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

while santas.length <= 5 do 
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
end
p santas
p santas.length

santa = Santa.new("female", "white")

p santa.ethnicity
p santa
p santa.current_age

santa.current_age(70)
p santa.age

santa.celebrate_birthday
p santa.age

santa.reindeer_ranker
p santa.reindeer_ranker

p santa.get_mad_at("Dancer")

santa.gender = "male"
puts "Santa is a #{santa.ethnicity} #{santa.gender}	."

100.times do 
	p Santa.new(example_genders.sample, example_ethnicities.sample)
	p santa.current_age(rand(140))

end