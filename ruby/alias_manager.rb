# Write a method that takes user input and SPLITs the string into individual 
# characters and keeps them in an array, and swaps the first and last name.
# GET the user's name
# Swap the first and last name, first by SPLITting them, then ROTATE them
# Seperate them into individual CHARS.
	# IF the letter is a vowel,
		# convert the letter into the next vowel in the string, 'aeioua'
	# or ELSE if it is a consonant, 
		# convert the letter into the next consonant in the string 'bcdfghjklmnpqrstvwxyz'
# JOIN the newly MAPped letters and PRINT them to the console		

#Expectation: the INPUT 'Felicia Torres' will have an OUTPUT of 'Vussit Gimodoe'

name_array = []

def letter_changer(user_name)
	new_name = ""

	user_name.downcase.chars.each do |letter|
		if letter == "a" 
			letter = "e"
			new_name << letter 
		elsif letter == "e"
			letter = "i"
			new_name << letter 
		elsif letter == "o"
			letter = "u"
			new_name << letter
		elsif letter == "u"
			letter = "a"
			new_name << letter
		elsif letter == " " 
			letter = " "
			new_name << letter 
		else 
			letter = letter.next
			new_name << letter 
		end
	end	
	new_name.split(" ").rotate 
end
# I know that the certain consonants are going to return a vowel, so I need to 
# figure out a solution for it.


 #UI 
  # Ask user for first and last name to encode, type UNTIL they type 'exit'.


puts "Welcome to the Code-Namer-ator. Please enter names to encode."
puts "------------------------"
puts "When you are finished, just type 'exit'."
puts "------------------------"
puts "Please enter your full name."
user_name = gets.chomp
name_array << letter_changer(user_name)

until user_name == "exit"
	puts "Please enter your next name."
	user_name = gets.chomp
	break if user_name == 'exit'
	letter_changer(user_name)
	name_array << letter_changer(user_name)
end

puts "Here are your new code names:"
puts name_array

# I need to find a better way to return each code name, it's currently just printing them
# last, first, last, first, one line per name. 

# Store each new name in an array, and print each in a user-friendly
# manner when finished.
