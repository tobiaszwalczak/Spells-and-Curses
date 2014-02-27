class State
	@@state = :menu

	def self.set (state)
		@@state = state
	end

	def self.get
		@@state
	end

	def self.is (*state, &block)
		if state.include?(@@state) || state.include?(:all)
			block.call
		end
	end
end