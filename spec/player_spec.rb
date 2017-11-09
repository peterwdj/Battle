require 'player'

describe Player do
  subject(:peter) { Player.new('Peter') }

  describe '#name' do
    it 'Returns the player\'s name' do
      expect(peter.name).to eq "Peter"
    end
  end
end
