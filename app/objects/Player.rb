class Player
	attr_accessor :health, :mana, :inventory

	def initialize
		@health = 100
		@mana = 100
		@inventory = []
	end

	def loot (container)
		inventory = container.has?

		inventory.each do |item|
			@inventory.push(item)
		end
		
		container.empty!
	end
end