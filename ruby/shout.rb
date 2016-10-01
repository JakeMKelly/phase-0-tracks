# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + ":("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + "XD XD XD"
# 	end	
# end

# p Shout.yell_angrily("I can't find my brain today")
# p Shout.yelling_happily("I found my brain")

module Shout
	def yell_louder(words)
		words.upcase + "!!!!!"
	end
end

class Concert_goer
	include Shout
end

class Ticket_scalper
	include Shout
end