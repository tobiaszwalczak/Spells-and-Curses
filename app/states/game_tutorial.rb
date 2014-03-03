State.is :game_tutorial do
	if State.setup?
	 	cellar = Location.new
	 	cellar.has("Door", "Window", "Chest")

		door = Door.new :locked, "Key to cellar door"

		chest = Container.new
		chest.fill("Key to cellar door", "Wooden sword", "An apple")
	end

	help "leave cellar", "what is in the room?", "open chest"

	input "leave", "leave cellar", "leave the room", "open door" do
		say error("The door is locked and I don't have the key.")
	end

	input "open window", "go trough window" do
		say error("The window can't be opened.")
	end

	input "what can i see?", "what is in the room?", "what is in here?" do
		say "I can see:"
		list cellar.has?
		say info("Maybe the key to the door is in the Chest...")
	end

	input "open chest" do
		say "The chest contains:"
		list chest.has?
	end

	input "loot chest", "loot the chest" do
		$player.loot(chest)
		say success("I looted the chest.")
	end

	input "inventory" do
		say "I have:"
		list $player.inventory
	end
end