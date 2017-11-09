class Player
  attr_reader :name, :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = 100
  end

  def reduce_hitpoints(amount)
    @hitpoints -= amount
  end
end
