class Word < String
	#word is class of string
	def very_long?(string)
		if string.length >= 10
			puts "true"
		end
	end
end

#created a variable because 
w = Word.new("saihdisajdajroeroehgfnsvsdvopsndv")
# puts w.very_long?("saihdisajdajroeroehgfnsvsdvopsndv")
# puts w.class
# puts w.class.superclass
# puts w.length

class Person
	attr_accessor :first_name, :last_name, :gender, :age

	def initialize(first_name, last_name, gender, age)
		@first_name = first_name
		@last_name = last_name
		@gender = gender
		@age = age
	end

	def introduction
		puts "#{@first_name} #{@last_name} is a #{@age} year old #{@gender}"
	end
end

# p = Person.new("Arturo", "Caesar", "male", 28)
# p.introduction

class Animal
	attr_accessor :name, :color, :habitat

	def initialize(species, color, habitat)
		@species = species 
		@color = color
		@habitat = habitat
		
	end

	def introduction
		puts "The #{color} #{@species} goes hard in #{@habitat}"
	end
end

a = Animal.new("Panda", "black and white", "Atlanta")

class Student < Person
	# attr_accessor :first_name, :last_name, :gender, :age, :sport

	def initialize(sport, first_name, last_name, gender, age)
		super(first_name, last_name, gender, age)
		@sport = sport
	end

	def learning
		puts "#{@first_name} #{@last_name} is a #{@age} year old #{@gender} getting his black belt in #{@sport}"
	end
end

a = Student.new("Brazilian Jiu Jitsu", "Arturo", "Caesar", "male", 28)
a.learning 
