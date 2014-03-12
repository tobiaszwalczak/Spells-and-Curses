class Food
  attr_accessor :name, :health, :mana

  def initialize (name, health, mana)
    @name = name
    @health = health
    @mana = mana
  end
end