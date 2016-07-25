# scores = [20, 45, 90]
# sum = scores[0] + scores[1] + scores [2]
# avg = sum.to_i/3
# puts "The average is #{avg}"
# sum = scores.inject(0){|sum, x| sum + x}
# puts sum

# scores = [20, 45, 90, 100]
# counter = 0 
# sum = 0
# while counter < scores.length
# 	sum = sum + scores[counter]
# 	counter += 1
# end 
# puts "the total is #{sum}"
# puts "the average is #{sum/counter}"

# hash = {"name" => "Arturo", "pet" => "El Chapo", "car" => "Carrari"}
# # hash.each do |key, value|
# # 	puts "#{key}, #{value}"
# # end
# puts hash.to_a
# puts hash.count
# puts hash.fetch("name")
# puts hash.keys
# puts hash.values

# hash = {"steak" => 90.00, 
# 		"lamb" => 78.00, 
# 		"salmon" => 50.00, 
# 		"wine" => 45.00,
# 		"cognac" => 20.00,
# 		"rye bread" => 4.99,
# 		"ramen" => 0.99,
# 		"asparagus" => 3.99}

# 	# counter = 0
# 	# while counter <= hash.length
# 	# 	counter += 1
# 		hash.each do|key, value| 
# 			if value < 5.00
# 			puts "#{key}"
# 			end
# 		end
# 	end

candybar = [
	{"name" => "snickers", "price" => "$2.00", "kid" => "Sam"},
	{"name" => "M&Ms", "price" => "$4.00", "kid" => "Ingrid"},
	{"name" => "Mike & Ikes", "price" => "$1.00", "kid" => "Ike"}]
	# puts "#{rows[0]['candy']}"
	candybar.each do |candybar|
	puts "#{candybar["kid"]} likes #{candybar["name"]} but it costs #{candybar["price"]}."
end
  