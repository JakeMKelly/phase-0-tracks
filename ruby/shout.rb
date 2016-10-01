module Shout
	def self.yell_angrily(words)
		words + "!!!" + ":("
	end

	def self.yelling_happily(words)
		words + "!!!" + "XD XD XD"
	end	
end

p Shout.yell_angrily("I can't find my brain today")
p Shout.yelling_happily("I found my brain")