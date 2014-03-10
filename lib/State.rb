class State
	@@setups = []

	def self.set (state) 
		@@state = state 
	end

	def self.get
		@@state
	end

	def self.add_setup (state)
		@@setups.push(state)
	end

	def self.setups
		@@setups
	end

	private

	def self.setup (&block)
		unless State.setups.include?(State.get)
			State.add_setup(State.get) 
			block.call
		end
	end

	def self.help (*commands)
		input "help" do
			puts "I can say:"
			list commands
		end
	end

	def self.input (*pattern, &block)
		if pattern.count == 1
			pattern = pattern[0].to_s

			if pattern.include?("[") && pattern.include?("]")
				pattern_words = pattern.split(" ")
				regex, vars = [], []

				pattern_words.each do |word|
					if word.include?("[") && word.include?("]")
						regex.push(word.gsub(/\[(.*)\]/, "(.*)"))
						vars.push(word.tr("][",""))
					else
						regex.push(word)
					end
				end

				regex = Regexp.new regex.join(" ")
				
				if Command.get =~ regex
					match = regex.match(Command.get).to_a
					match.shift
					block.call(*match)
					Command.log = Command.get
				end
			elsif pattern == Command.get
				block.call
				Command.log = Command.get
			end
		else
			if pattern.include?(Command.get)
				block.call
				Command.log = Command.get
			end
		end
	end

	def self.input_else (&block)
		if Command.done? == false
			block.call
		end
	end
end