State.is :menu do
	input "continue" do
		puts "..."
	end

	input "load game" do
		#show saves
	end

	input "new game" do
		puts "Changed to game"
		State.set :game
	end
end