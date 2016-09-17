# Create a program that asks a series of questions,
	# Assign the input to a variable

print "What is your name?"
employee_name = gets.chomp
case employee_name
when "Drake Cula"
	vamp_handle = true
when "Tu Fang"
	vamp_handle = true
else 
	vamp_handle = false
end

print "How old are you?" 
age = gets.to_i

print "What year were you born?"
birth_year = gets.to_i
current_year = 2016

if current_year - birth_year === age
	real_age = true
else
	real_age = false
end

print "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp
case garlic
when "yes"
	likes_garlic = true
when "no"
	likes_garlic = false
end
		

print "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp
case insurance
when "yes"
	mortal = true
when "no"
	mortal = false
end

# print "#{employee_name}, #{age}, #{birth_year}, #{garlic}, #{insurance}."




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
elsif almost_certain && (vamp_handle === false)
	puts "Almost certainly a vampire."
elsif probably_not && vamp_handle
	puts "Definitely a vampire."
elsif probably_is && vamp_handle
	puts "Definitely a vampire."
elsif almost_certain && vamp_handle
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end
			

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
# Otherwise, print “Results inconclusive.”
# Print the result at the end of the survey. 