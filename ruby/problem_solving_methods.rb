# arr = [42, 89, 23, 1]
# arr_2 = [42, 89, 23, 1, 5]

# def search_array(array_name, x)
# 	# iterate through array_name to find x and return its index location
# 		# if x is found

	
# 	array_name.each do |a|
			
# 			if a == x
# 				until array_name.length
# 				i = 0
# 				p i
# 				i += 1
# 			end
# 			else 
# 				puts nil
# 			end

# 	end

# end

# search_array(arr, 89)

# search_array(arr, 7)

# We spent an hour and a half trying to get this to work, trying to move on to the 
# next release



def fib(x)
	fib_array = [0, 1]
	# new_array = []

	until fib_array.length == x 
	total_value = fib_array[-1] + fib_array[-2]
	fib_array << total_value
	end

	if fib_array[-1] == 218922995834555169026
		puts fib_array  puts "True"
	else
	puts fib_array
	end
end


fib(6)
fib(100)

# Sorting method
# For an array
	# Take each integer in the array and compare it to the next
	# If it is less than the next integer, swap the position
	# If it is more than the next integer, repeat the process
	# return the sorted array

def sort(array)
	array.each.map! do |x, y| 
		if x > y
			
		end
end