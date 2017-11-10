require 'player'

describe Player do
  subject { Player.new('Peter') }
  let (:majd) { Player.new('Majd') }

  describe '#name' do
    it 'Returns the player\'s name' do
      expect(subject.name).to eq "Peter"
    end
  end
  describe '#attack' do
    it 'Allows the attacked player to receive #reduce_hitpoints' do
      expect(majd).to receive(:reduce_hitpoints).with(10)
      subject.attack(majd)
    end
  end
  describe '#reduce_hitpoints' do
    it 'Reduces a player\'s hitpoints by 10' do
      subject.reduce_hitpoints(10)
      expect(subject.hitpoints).to eq 90
    end
  end
end
