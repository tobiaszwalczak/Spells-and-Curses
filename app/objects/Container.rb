class Container
	def initialize (key = nil)
		@key = key unless key == nil
		@inventory = []
	end

	def fill (*items) @inventory = items end
	def has? () @inventory end
	def empty! () @inventory = [] end
end