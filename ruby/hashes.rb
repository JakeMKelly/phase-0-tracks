# User Interface
# Ask the designer for details for the client. Each response is a value.  
client = {}

puts "Client name?"
client[:name] = gets.chomp

puts "Preferred motif?"
client[:theme] = gets.chomp

puts "Number of rooms?"
client[:rooms] = gets.to_i

puts "Any pets? (y/n)"
pets = gets.chomp
if pets == "y"
	pets_in_home = true
else pets == "n"
	pets_in_home = false
end
	
client[:pets] = pets_in_home

puts "Couch, futon, or pillowfort?"
client[:furniture] = gets.chomp		

# Driver Code 
# Build an empty hash
# Add each key/value pair to the new hash
# Print the new hash for the user to read
# Ask designer for a key to update
	# IF the user says "none", no update
	# ELSE ask the designer what the new value should be
		# Replace the old value with the new value
# Print the updated hash and exit the program
puts "-" * 17
puts "Here's your info:" 
puts client
puts "-" * 17


