require_relative 'bear' 
require_relative 'ninja'

class Battle
	#we want a two person fight
	attr_reader :fighter1, :fighter2
	def initialize(fighter1, fighter2)
		@fighter1 = fighter1
		@fighter2 = fighter2
	end

	def fight
		@fighter1.attack(@fighter2)
		@fighter2.attack(@fighter1)
		self.battle_status
	end

	def battle_status
		puts "#{@fighter1.name} has #{@fighter1.health} health remaining."
		puts "#{@fighter2.name} has #{@fighter2.health} health remaining."
	end

	def fighter2_attack
		2.times do 
			@fighter2.attack(@fighter1)
		end
		self.battle_status
	end

	def fighter1_attack
		@fighter1.attack(@fighter2)
		self.battle_status
	end


end

bear = Bear.new("Yogi", 100, 12)
ninja = Ninja.new("Ryu", 100, 15)
battle = Battle.new(bear, ninja)

yogi_name = battle.fighter1.name
ryu_name = battle.fighter2.name 

puts "Today in Fight Club, we have #{yogi_name} vs. #{ryu_name} Ready? Fight!"

until battle.fighter1.health <= 0 || battle.fighter2.health <= 0 
	battle.fighter2_attack
	battle.fighter1_attack
end
