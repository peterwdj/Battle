require 'game'

describe Game do
  let(:peter) { double(:player, attack: nil, reduce_hitpoints: nil)  }
  let(:player) { double(:player_class, new: peter) }
  subject { described_class.new('Peter', 'Majd') }

  describe '#attack' do
    after(:each) { subject.attack(player, player) }
    it 'Player should be able to receive #attack' do
      expect(player).to receive(:attack).with(player)
    end
  end
end
