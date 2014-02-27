def clear
	system "clear"
end

def list (items, color = nil)
	items.each do |item|
		if color
			puts Rainbow("  - #{item}").color(color)
		else
			puts "  - #{item}"
		end
	end
end

def input (*pattern, &block)
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
		end
	end
end