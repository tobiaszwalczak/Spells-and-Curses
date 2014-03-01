def clear () system "clear" end

def cmd     (string) Rainbow(string).blue.bright   end
def success (string) Rainbow(string).green.bright  end
def error   (string) Rainbow(string).red.bright    end
def info    (string) Rainbow(string).yellow.bright end

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
			Command.log = Command.get
		end
	end
end

def input_else (&block)
	if Command.done? == false
		block.call
	end
end

def setup (*block) block.call end

def help (*commands)
	input "help" do
		puts "I can say:"
		list commands
	end
end

def say (text, speed = 0.07)
	chars = text.split("")

	if speed == :fast
		speed = 0.05
	elsif speed == :very_fast
		speed = 0.002
	elsif speed == :slow
		speed = 0.2
	end

	chars.each do |char|
		print char
		sleep speed
	end

	print "\n"
end