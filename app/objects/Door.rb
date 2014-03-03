class Door
	attr_accessor :locked, :key

	def initialize (state, key)
		@locked = state
		@key = key
	end

	def locked?
		@locked == :locked ? true : false
	end

	def open
		@locked = :open
	end
end