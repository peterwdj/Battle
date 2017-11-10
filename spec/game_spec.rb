require 'game'

describe Game do
  let(:peter) { double(:player, attack: nil, reduce_hitpoints: nil, hitpoints: 0) }
  let(:majd) { double(:player, attack: nil, reduce_hitpoints: nil, hitpoints: 0) }

  subject { described_class.new(majd, peter) }

  describe '#attack' do
    after(:each) { subject.attack }
    it 'Player should be able to receive #attack' do
      expect(majd).to receive(:attack).with(peter)
    end
  end

  describe '#switch_turns' do
    it 'Should begin as player 1\'s turn to attack' do
      expect(subject.attacker).to eq majd
    end
    it "Should be player 2\'s turn to attack" do
      subject.switch_turns
      expect(subject.attacker).to eq peter
    end
  end

  describe '#finish?' do
    it 'Should end a game when a player has 0 HP' do
      expect(subject.finish?).to eq true
    end
  end
end
