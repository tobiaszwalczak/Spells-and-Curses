State.is :menu do
	help "continue", "load game", "new game"

	input "continue" do
		#load latest save
	end

	input "load game" do
		#show saves
		#load selected save
	end

	input "new game" do
		clear
		sleep 1
		say "You wake up in an old cellar."
		State.set :game_tutorial
	end
end