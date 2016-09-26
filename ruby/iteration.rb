def practice
	param1 = "first parameter"
	param2 = "second parameter"
	puts "This is practice."
	yield(param1, param2)
end

practice { |param1, param2| puts "This is a block. With #{param1} and #{param2}."
 }

cars = {:honda => "Accord", :chevy => "Corvette", :toyota => "Prius", :ford =>
"Mustang"}

prices = [500, 35, 276, 87, 9235, 863]

p cars
cars.each do |make, model|
	puts "Did you know that #{make} builds the #{model}?" 
end
p cars
p prices
prices.map! do |price|
	price + 1
end
p prices

cars.delete_if {|make, model| make == :toyota }
p cars
prices.delete_if {|price| price < 100 }
p prices
cars.keep_if {|make, model| model.length >= 7 }
p cars
prices.keep_if {|price| price >= 501 }
p prices
cars.reject! {|make, model| model.length <= 7 }
p cars
prices.reject! {|price| price >= 8000 }
p prices
cars.delete_if {cars.has_key?(:chevy) == true}
p cars
prices.drop_while {|price| price > 1000 }
p prices