class Puppy

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(x)
		puts "Woof! " * x
	end
end

dog = Puppy.new
dog.fetch("bone")
dog.speak(3)