require 'game'

describe Game do
  let(:peter) { double(:player, attack: nil, reduce_hitpoints: nil)  }
  let(:majd) { double(:player, attack: nil, reduce_hitpoints: nil)  }

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
end
