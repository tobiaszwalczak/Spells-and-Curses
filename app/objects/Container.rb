class Container
  attr_accessor :name, :key, :inventory

  def initialize (name, key = nil)
    @name = name
    @key = key unless key == nil
    @inventory = []
  end

  def fill (*items)
    items.each do |item|
      @inventory.push(item)
    end
  end

  def has? (item = nil)
    if item.nil?
      if @inventory.empty?
        ["Nothing"]
      else
        @inventory.map(&:name)
      end
    else 
      if @inventory.include?(item)
        true
      else 
        false
      end
    end
  end

  def empty!
    @inventory = []
  end
end