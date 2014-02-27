class Location
	def initialize
		@items = []
	end

	def has (*items)
		items.each {|item| @items.push(item) }
	end

	def has?
		@items
	end
end