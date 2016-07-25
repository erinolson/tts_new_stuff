# # puts "1 bird on a wire. Hahahaha"

# # # # interpolation, automatically converts to string!
# # # # 2 dots include last number in range
# # # # 3 dots go up to last number in range
# # # for n in 2..100
# # # 	puts  "#{n + 5} birds on a wire. Hahahaha"
# # # end

# # x = 1
# # while x <= 10
# # 	puts "#{x} is the lonliest number."
# # 	x = x + 1
# # end

# # x = 0 
# # until x == 10
# # 	puts "#{x} isn't 10 yet!"
# # 	x += 1
# # end
# # puts "#{x} is now 10!"

# 5.times do |i|
# 	puts "We are at number #{i}"
# end

# 1.upto(5) do |n|
# 	puts "We are at number #{n}"
# end

# 1.upto(5) {|n| "We are at number #{n}"}

# 1. print out the numbers from 1 to 100
# 2. is the number is divisible by 3, replace that number wiht the word fixx
# 3. if the number is divisible by 5, replace that number with the word buzz
# 4. if that number is divisible by 3 and 5, replace that number with the word fixxbuzz

i = 0
while i <= 100
	i += 1 
	puts "We are at number #{i}"
	if i % 3 == 0 && i % 5 == 0
		puts "FizzBuzz"
	elsif i % 5 == 0
		puts "buzz"
	elsif i % 3 == 0 
		puts "fizz"
	end  
end