class Game
  attr_reader :player1, :player2, :attacker

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @attacker = @player1
    @defender = @player2
  end

  def attack
    @attacker.attack(@defender)
    switch_turns
  end

  def switch_turns
    @attacker, @defender = @defender, @attacker
  end
end
