require_relative 'fighter' 


class Ninja < Fighter
	def intitialize (name, health, power)
		super(name, health, power)

	end

	def attack(enemy)
		puts "Hadooooooken!!"
		enemy.lose_health(self.power, enemy.health)
	end

	
end

