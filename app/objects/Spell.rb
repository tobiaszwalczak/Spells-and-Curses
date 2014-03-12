class Spell
  attr_accessor :name, :damage, :effects

  def initialize (name, damage, effects = nil)
    @name = name
    @damage = damage
    @effects = effects
  end
end