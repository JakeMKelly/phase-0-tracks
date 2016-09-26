
# 	# iterate through array_name to find x and return its index location
# 		# if x is found
arr = [42, 89, 23, 1]
arr_2 = [42, 89, 23, 1, 5]

def search_array(to_search, search_value)
    counter = 0

    to_search.each do |search_elem|
       break if search_elem == search_value
       counter += 1
    end

    if counter == to_search.length
        p nil
    else
        p counter
    end
end

search_array(arr, 89)




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

list = [56, 31, 12, 5, 62, 2]

def bubble_sort(list)
    swap = true
    while swap
        swap = false
        list.each_with_index do |number, index|
            next_number = list[index + 1]
            break if index == list.length - 1
            if number > list[index + 1]
                list[index] = next_number
                list[index + 1] = number
                swap = true
            end
        end
    p list
    end
end

bubble_sort(list)