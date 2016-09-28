class Puppy

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