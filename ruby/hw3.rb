inventory = [
	{"name" => "New Balance", "price" => "$102.00", "quantity" => "10"},
	{"name" => "Nike Kobe Bryant Elite XI", "price" => "$184.00", "quantity" => "10"},
	{"name" => "Asics Gel III Lyte", "price" => "$100.00", "quantity" => "10"},
	{"name" => "Yeezy Boost 750", "price" => "$1200.00", "quantity" => "3"}]

answer = gets.chomp
	puts "Type 'inventory' to list th items, 'add' if you would like to add an item. Type 'remove' if would like to remove an item. Type 'no' if you are not interested in our program."
	until answer == no
	
		if answer == 'inventory'
			inventory.each do|inventory|
			puts "The #{inventory["name"]} costs #{inventory["price"]} and we only have #{inventory["quantity"]} in stock!."
			end	
	
		elsif answer == 'add'
			puts "What is the name of the item?"
			name = gets.chomp
			puts "What is the price?"
			price = gets.chomp.to_i
			puts "How many are you adding?"
			quantity = gets.chomp.to_i
			inventory.store(name,price,quantity)
		

		elsif answer == 'remove'
			for n in 0..4
				inventory.each do|inventory|
				puts "#{n} The #{inventory["name"]} costs #{inventory["price"]} and we only have #{inventory["quantity"]} in stock!."
				end
			end		
		
		else 
			puts "Not a valid response. Try again."

		puts "Type 'inventory' to list th items, 'add' if you would like to add an item. Type 'remove' if would like to remove an item. Type 'no' if you are not interested in our program."
		answer = gets.chomp
	
	end

	
		# inventory.delete ("New Balance")

	# puts "Here is the updated inventory with the item deleted!"
	# inventory.each do|inventory|
	# puts "The #{inventory["name"]} costs #{inventory["price"]} and we only have #{inventory["quantity"]} in stock!."
	# 	end

		# inventory.default = "There is nothing here"


	# 	hash.each do|key, value| 
	# 		if value < 5.00
	# 		puts "#{key}"
	# 		end
	# 	end
	# end
	