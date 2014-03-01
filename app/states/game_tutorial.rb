State.is :game_tutorial do
	# setup do
	# 	player = Player.new

	 	cellar = Location.new
	 	cellar.has "Door", "Window", "Chest"

	# 	cellar_door = Door.new :locked, "cellar_key"

	# 	cellar_chest = Container.new
	# 	cellar_chest.fill "cellar key", "wooden sword", "apple"
	# end

	help "leave cellar", "what is in the room?", "open chest"

	input "leave", "leave cellar", "leave the room", "open door" do
		say error("The door is locked and I don't have the key.")
	end

	input "what can i see?", "what is in the room?", 
				"what is in here?", "what is here?" do
		say "I can see:"
		list cellar.has?
		say info("Maybe the key to the door is in the Chest...")
	end

	input_else do puts error("Invalid command.") end
end