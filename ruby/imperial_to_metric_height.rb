puts "What city are you in?"
city = gets.chomp

puts "What is the temperature in Fahreheit?"
fahrenheit = gets.chomp.to_i

puts "What is the temperature in Celsius?"
celsius = gets.chomp.to_i

convert_toCelsius = (fahrenheit - 32) / 1.8
convert_toFahrenheight = (celsius * 1.8) + 32

puts 'In ' + city + ' it is ' + convert_toCelsius.to_s + ' C and ' + convert_toFahrenheight.to_s + ' F.' 