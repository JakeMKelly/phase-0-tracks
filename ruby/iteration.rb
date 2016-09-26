def practice
	puts "This is practice."
	yield
end

practice { puts "This is a block." }