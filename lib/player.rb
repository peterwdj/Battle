class Player
  attr_reader :name, :hitpoints

  HITPOINTS = 100

  def initialize(name, hitpoints = HITPOINTS)
    @name = name
    @hitpoints = hitpoints
  end

  def attack(player)
    player.reduce_hitpoints(10)
  end

  def reduce_hitpoints(amount)
    @hitpoints -= amount
  end
end
