def practice
	param1 = "first parameter"
	param2 = "second parameter"
	puts "This is practice."
	yield(param1, param2)
end

practice { |param1, param2| puts "This is a block. With #{param1} and #{param2}."
 }
