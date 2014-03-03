class State
	@@state = :menu
	@@setups = []

	def self.set (state) @@state = state end
	def self.get () @@state end

	def self.is (*state, &block)
		if state.include?(@@state) || state.include?(:all)
			block.call
		end
	end

	def self.setup?
		unless @@setups.include?(self.get) 
			self.add_setup(self.get)
			true
		end
	end

	def self.add_setup (state) @@setups.push(state) end
	def self.setups () @@setups end
end