puts "What is todays temperature?"
todays_temperature = gets.chomp.to_i

if todays_temperature >= 100 || todays_temperature < 0
	puts "Not a valid temp!!"
elsif todays_temperature > 50 
	puts "Im going hiking"
elsif todays_temperature == 23
	puts "No way its 23 degrees!"
else
	puts "I'm not going hiking!"	
end


