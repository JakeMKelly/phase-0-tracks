class Puppy

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end
end

dog = Puppy.new
dog.fetch("bone")
