class Puppy

	def initialize
		puts "Initializing new puppy instance."
	end

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(x)
		puts "Woof! " * x
	end

	def roll_over
		puts "*rolls over*"
	end

	def dog_years(y)
		p y * 7
	end

	def play_dead(a) 
		puts "Lays down for #{a} seconds."
	end
end

dog = Puppy.new
dog.fetch("bone")
dog.speak(3)
dog.roll_over
dog.dog_years(5)
dog.play_dead(6)

class Car

	def initialize
		puts "Initializing new car."
	end

	def hated_brand(manufacturer)
		p "Any car made by #{manufacturer} sucks!"
	end

	def rev_engine(x)
		p "Vroom!" * x
	end
end

garage = []

50.times do 
	garage << cars = Car.new
	cars.hated_brand("Ford")
	cars.rev_engine(2)
end

p garage
garage.each do |vehicle|
	vehicle.hated_brand("Chevy")
	vehicle.rev_engine(3)
end