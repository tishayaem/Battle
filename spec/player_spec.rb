require 'player'

describe Player do
  subject(:player1) { Player.new("Ash") }
  let(:player2)  { double :player }

  describe '#name' do
    it "returns the player's name" do
      expect(player1.name).to eq "Ash"
    end
  end

  describe '#hit_points' do
    it "returns the player's hit points" do
      expect(player1.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'attacks player 2' do
      expect(player2).to receive(:receive_damage)
      player1.attack(player2)
    end
  end

  describe '#reduce' do
    it "reduces HP by 10" do
      expect do
        player1.receive_damage
      end.to change { player1.hit_points }.by(-10)
    end
  end
end
