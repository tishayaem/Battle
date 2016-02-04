require 'player'

describe Player do
  subject(:sarah) { Player.new("sarah") }
  subject(:mic) { Player.new("mic") }

  describe '#name' do
    it "returns the player's name" do
      expect(sarah.name).to eq "sarah"
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(sarah.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe 'attack' do
    it 'damages the player' do
      expect(mic).to receive(:receive_damage)
      sarah.attack(mic)
    end
  end

  describe '#receive_damage' do
    it "reduces HP by 1" do
      expect{sarah.receive_damage}.to change{sarah.hit_points}.by(-1)
    end
  end

end
