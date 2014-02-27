State.is :menu do
	input "continue" do
		#load latest save
	end

	input "load game" do
		#show saves
		#load selected save
	end

	input "new game" do
		say "Your journey begins now ...", :slow
		clear
		say "You wake up in a old cellar."
		State.set :game_tutorial
	end
end