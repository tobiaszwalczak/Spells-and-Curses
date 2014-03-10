class Location
	def initialize
		@items = []
	end

	def has (*items)
		items.each {|item| @items.push(item) }
	end

	def has? (item = nil)
		if item.nil?
			if @items.empty?
				["Nothing"]
			else
				@items
			end
		else 
			if @items.include?(item)
				true
			else 
				false
			end
		end
	end
end