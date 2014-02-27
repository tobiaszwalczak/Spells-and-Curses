State.is :all do
	input "exit", "quit" do
		clear
		exit
	end

	input "log" do
		unless Command.log.empty?
			puts " Your last commands:"
			list Command.log.take(10)
		end
	end
end