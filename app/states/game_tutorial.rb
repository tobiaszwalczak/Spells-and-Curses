State.is :game_tutorial do
	cellar = Location.new
	cellar.has "Door", "Window", "Locker"

	input "leave", "leave cellar", "open door" do
		say error("The door is locked and you don't have the key.")
	end

	input "what can i see?", 
				"what is in the room?", 
				"what is in here?", 
				"what is here?" do
		say "In the room is:"
		list cellar.has?
		say info("Maybe the key to the door is in the Locker...")
	end
end