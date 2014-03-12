class Player
  attr_accessor :health, :mana, :inventory

  def initialize
    @health = 100
    @mana = 100
    @inventory = []
  end

  def inventory
    @inventory.map(&:name)
  end

  def has? (item)
    if @inventory.map(&:name).include?(item)
      true
    else
      false
    end
  end

  def loot (container)
    inventory = container.inventory

    inventory.each do |item|
      @inventory.push(item)
    end
    
    container.empty!
  end
end