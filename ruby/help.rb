class User
  attr_accessor :name
  attr_accessor :age
  attr_accessor :email
end

user = User.new

puts "Name:"
user.name = gets.chomp.to_s

puts "Age:"
user.age = gets.chomp.to_s

puts "Email:"
user.email = gets.chomp.to_s

puts "Name: #{user.name}, Age: #{user.age}, E-mail: #{user.email}"
