class Game
  attr_reader :player1, :player2, :attacker, :defender

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @attacker = @player1
    @defender = @player2
  end

  def attack
    @attacker.attack(@defender)
    switch_turns unless finish?
  end

  def switch_turns
    @attacker, @defender = @defender, @attacker
  end

  def finish?
    player1.hitpoints <= 0 || player2.hitpoints <= 0
  end
end
