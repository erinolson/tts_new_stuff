puts "What is your favorite Crayola Crayon?"
color = gets.chomp
puts color.upcase.reverse + '!'

puts "Please enter a message!"
message = gets.chomp
puts message.gsub(/([aeiouAEIOU])/, ' ')
if message.include? 'sh'
	puts "true."
else puts "false"
end

puts "How are you feeling today?"
mood = gets.chomp
puts mood.length
puts "meow" + mood + "."

puts "What is your favorite Chick Fil A Sauce?"
sauce = gets.chomp
puts sauce.gsub(/([aeiouAEIOU])/, '*').split ('*')

puts "What is your bar tab?"
tab = gets.chomp.to_f
bill = sprintf ("%.2f", tab)
puts "$" + bill

puts "What is you age in years?"
age = gets.chomp.to_i
days_old = age * 365
uranus_age = days_old.to_f / 30660.0
puts "You are " + uranus_age.round(2).to_s "years old on Uranus!"

convertage_toseconds = age * (3153600)
convertage_toMercury = age *(4.15714286)
convertage_toVenus = age * (1.63)
convertage_toMars = age * (0.53)
convertage_toJupiter = age * (0.08)
convertage_toSaturn = age * (0.03)
convertage_toUranus = age * (0.01)

convertage_toNeptune = age * (0.01)
puts "Your age is" + convertage_toseconds.round(2) + "in seconds!"
puts "Your age is" + convertage_toMercury.round(2) + "on Mercury!"
puts "Your age is" + convertage_toVenus.round(2) + "on Venus!"
puts "Your age is" + convertage_toMars.round(2) + "on Mars!"
puts "Your age is" + convertage_toJupiter.round(2) + "on Jupiter!"
puts "Your age is" + convertage_toSaturn.round(2) + "on Saturn!"
puts "Your age is" + convertage_toUranus.round(2) + "on Uranus!"
puts "Your age is" + convertage_toNeptune.round(2) + "on Neptune!"





