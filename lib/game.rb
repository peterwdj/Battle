class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack(attacker, attacked)
    attacker.attack(attacked)
  end
end