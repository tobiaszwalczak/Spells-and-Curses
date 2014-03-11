class GameTutorial < State
  setup do
    @cellar = Location.new "Cellar"
    @cellar.has("Door", "Chest")

    @door = Door.new("Cellar door", :locked, "Key to cellar door")

    @chest = Container.new "Cellar chest"
    @chest.fill(
      Key.new    ("Key to cellar door", @door),
      Weapon.new ("Wooden sword", 8..10),
      Food.new   ("Apple", 5, 0),
      Spell.new  ("Fireball", 8..10)
    )
  end

  help "leave cellar", "what can i see?"

  input "leave cellar", "open door" do
    say error("The door is locked and I don't have the key.")
  end

  input "what can i see?" do
    say "I can see:"
    list @cellar.has?
    say info("Tutorial: To leave rooms type: 'open door' or 'leave [room]'")
    say info("Tutorial: To open things type: 'open [thing]'")
  end

  input "open chest" do
    say "The chest contains:"
    list @chest.has?
    say info("Tutorial: To take what's in an container type: 'loot [container]'")
  end

  input "loot chest" do
    $player.loot(@chest)
    say success("I looted the chest.")
    say info("Tutorial: To list what you are carrying type: 'inventory'")
  end

  input "inventory" do
    say "I have:"
    list $player.inventory
  end
end