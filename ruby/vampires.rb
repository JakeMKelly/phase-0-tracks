# Create a program that asks a series of questions,
	# Assign the input to a variable
puts "How many employees would you like to process today?"
employee_count = gets.to_i

index = 0

while index < employee_count

	puts "What is your name?"
	employee_name = gets.chomp
	case employee_name
	when "Drake Cula"
		vamp_handle = true
	when "Tu Fang"
		vamp_handle = true
	else 
		vamp_handle = false
	end

	puts "How old are you?" 
	age = gets.to_i

	puts "What year were you born?"
	birth_year = gets.to_i
	current_year = 2016

	if current_year - birth_year === age
		real_age = true
	else
		real_age = false
	end

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp
	case garlic
	when "yes"
		likes_garlic = true
	when "no"
		likes_garlic = false
	end
			

	puts "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp
	case insurance
	when "yes"
		mortal = true
	when "no"
		mortal = false
	end

	# print "#{employee_name}, #{age}, #{birth_year}, #{garlic}, #{insurance}."

	puts "If you have any allergies, please list the first"
		employee_allergy = gets.chomp

	until employee_allergy === "done" || employee_allergy === "sunshine"	
		puts "Please list your next allergy. If none, type 'done'."
		employee_allergy = gets.chomp
	end

	case employee_allergy
	when "sunshine"
		vampire_skin = true
	else
		vampire_skin = false
	end

	if vampire_skin == true
		puts "Probably a vampire."
	else 
		
		if real_age && (likes_garlic || mortal)
			probably_not = true
		elsif (real_age === false) && (likes_garlic === false && mortal === true)
			probably_is = true
		elsif (real_age === false) && (likes_garlic === true && mortal === false)
			probably_is = true
		elsif (real_age === false) && (likes_garlic === false && mortal === false)
			almost_certain = true
		else  
			inconclusive = true 
		end

		if probably_not && (vamp_handle === false)
			puts "Probably not a vampire."
		elsif probably_is && (vamp_handle === false)
			puts "Probably a vampire."
		# elsif vampire_skin && (vamp_handle === false)
		# 	puts "Probably a vampire."
		elsif almost_certain && (vamp_handle === false)
			puts "Almost certainly a vampire."
		elsif probably_not && vamp_handle
			puts "Definitely a vampire."
		elsif probably_is && vamp_handle
			puts "Definitely a vampire."
		# elsif vampire_skin && vamp_handle
		# 	puts "Definitely a vampire."
		elsif almost_certain && vamp_handle
			puts "Definitely a vampire."
		elsif inconclusive && vamp_handle
			puts "Definitely a vampire."
		else
			puts "Results inconclusive."
		end
	end

index += 1		
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
# Otherwise, print “Results inconclusive.”
# Print the result at the end of the survey. 