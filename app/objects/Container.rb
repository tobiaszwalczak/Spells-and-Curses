class Container
	def initialize (key = nil)
		@key = key unless key == nil
		@inventory = []
	end

	def fill (*items)
		@inventory = items
	end

	def has? (item = nil)
		if item.nil?
			if @inventory.empty?
				["Nothing"]
			else
				@inventory
			end
		else 
			if @inventory.include?(item)
				true
			else 
				false
			end
		end
	end

	def empty!
		@inventory = []
	end
end