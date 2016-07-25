class Fighter  
	attr_reader :name
	#Only read and cannot write over it
	attr_accessor  :name, :health, :power

	def initialize (name, health, power)
		@name = name
		@health = health
		@power = power
	end

	def attack (enemy)
		enemy.lose_health(self.power, enemy.health)
	end

	def lose_health(enemy_power, health)
		self.health -= enemy_power
	end
end

ali = Fighter.new("Muhammad Ali", 100, 20)
tyson = Fighter.new("Mike Tyson", 100, 10)
# puts ali.attack(tyson)
# puts tyson.attack(ali)