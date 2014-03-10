def clear () system "clear" end

def cmd     (string) Rainbow(string).blue.bright   end
def success (string) Rainbow(string).green.bright  end
def error   (string) Rainbow(string).red.bright    end
def info    (string) Rainbow(string).yellow.bright end

def list (items, color = nil)
	sleep 0.5

	items.each do |item|
		if color
			puts Rainbow("  - #{item}").color(color)
			sleep 0.5
		else
			puts "  - #{item}"
			sleep 0.5
		end
	end
end

def say (text, speed = 0.07)
	chars = text.split("")

	if speed == :fast
		speed = 0.05
	elsif speed == :very_fast
		speed = 0.001
	elsif speed == :slow
		speed = 0.2
	end

	chars.each do |char|
		print char
		sleep speed
	end

	print "\n"
end