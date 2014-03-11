class Door
  attr_accessor :name, :state, :key

  def initialize (name, state, key)
    @name = name
    @state = state
    @key = key
  end

  def locked?
    @locked == :locked ? true : false
  end

  def open
    @locked = :open
  end
end