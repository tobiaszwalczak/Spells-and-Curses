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
		say "I woke up in an old cellar. I need to get out here."
		State.set :game_tutorial
	end

	input_else do puts error("Invalid command.") end
end