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
	def yell_angrily(words)
		puts words + "!!!" + ":("
	end

	def yelling_happily(words)
		puts words + "!!!" + "XD XD XD"
	end	
end

class Concert_goer
	include Shout
end

class Ticket_scalper
	include Shout
end

fan = Concert_goer.new
fan.yell_angrily("They're not playing my favorite song")
fan.yelling_happily("They're playing my favorite song")

seller = Ticket_scalper.new
seller.yell_angrily("Somebody buy these tickets, the show's starting")
seller.yelling_happily("I'm all out of tickets, I sold them all")