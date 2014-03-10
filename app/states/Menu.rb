class Menu < State
	help "continue", "load game", "new game"

	input "continue" do
		#load latest save
	end

	input "load game" do
		#show saves
		#load selected save
	end

	input "new game", "new" do
		clear
		sleep 1
		say "I woke up in an old cellar. I need to get out here."
		$player = Player.new
		Command.line = "Hp:"+error($player.health)+"% Mana:"+cmd($player.health)+"% > "
		State.set :GameTutorial
	end

	input_else do puts error("Invalid command.") end
end