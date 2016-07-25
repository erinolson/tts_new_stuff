#1
# puts "What is your first name?"
# first_name = gets.chomp
# puts "What is your last name?"
# last_name = gets.chomp
# full_name = first_name + " " + last_name
# puts full_name + ", did you know your name has " + full_name.length.to_s " letters in it!"

#2
puts "Do you want to take the math test?"
reply = gets.chomp
if reply == "yes"
	number1 = rand(1..10)
	number2 = rand(1..10)
	test = "What is #{number1} + #{number2}?"
	puts test
	answer = gets.chomp.to_i
		if answer.to_i == (number1 + number2)
			puts "Yeah, you got it right."
		elsif answer.to_i != (number1 + number2)
			puts "Nope, sorry. You might want to try again."
		else
			puts test			
	end
end

# #3
# puts "What is your favorite color?"
# answer = gets.chomp
# 	if answer == "blue" || answer == "green"
# 		puts "Good choice, that is a great color!"
# 	else
# 		puts "#{answer} ewwwww thats an awful color!"
# 	end

# #4
# puts "What drink do you want?"
# drink = gets.chomp
# puts "You want a #{drink}? Holon, how old are you?"
# age = gets.chomp
# 	if age.to_i >= 21
# 		puts "#{drink} coming up!"
# 	else 
# 		puts "Sorry youngin'. Youll have to wait, " + (21 - age.to_i).to_s + " years. See you then!"
# 	end

#5
# while true
# # puts "What are you doing?"
# input = gets.chomp
# puts input
# 	if input == "I smell" 
# 		puts "Wait a second!"
# 		break
# 	end
# end

# #5 alternative
# say = ""
# until say.include?("dummy")
# 	puts "Say something. "
# 	say = gets.chomp
# puts say
# end
# 	puts "You're a dummy! Bye!"
