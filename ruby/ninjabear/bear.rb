 
require_relative 'fighter'


class Bear < Fighter
	def intitialize (name, health, power)
		super(name, health, power)

	end

	def attack(enemy)
		puts "RAWR!!"
		enemy.lose_health(self.power, enemy.health)
	end
end

ali = Fighter.new("Muhammad Ali", 100, 20)
tyson = Fighter.new("Mike Tyson", 100, 10)
bear = Bear.new("Bear", 100, 12)
# puts bear.attack(tyson)