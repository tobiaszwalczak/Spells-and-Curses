State.is :all do
	input "exit", "quit" do
		say "See you later..."
		clear
		exit
	end

	input "clear" do clear end

	input "log" do
		unless Command.log.empty?
			puts " Your last commands:"
			list Command.log.take(10).reverse
		end
	end
end