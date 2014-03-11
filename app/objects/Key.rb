class Key
  attr_accessor :name, :door
  
  def initialize (name, door = nil)
    @name = name
    @door = door unless door.nil?
  end
end