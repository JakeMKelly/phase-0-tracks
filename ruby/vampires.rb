# Create a program that asks a series of questions,
	# Assign the input to a variable

print "What is your name?"
employee_name = gets.chomp

print "How old are you?" 
age = gets.to_i

print "What year were you born?"
birth_year = gets.to_i

print "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp

print "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp

print "#{employee_name}, #{age}, #{birth_year}, #{garlic}, #{insurance}." 