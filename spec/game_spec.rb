require 'game'

describe Game do
  subject(:game) { described_class.new(p1, p2) }
  let(:p1) { double :player }
  let(:p2) { double :player }

  describe '#initialize' do
    it "should initialze with player 1" do
      expect(game.player_1).to eq p1
    end

    it "should initialze with player 2" do
      expect(game.player_2).to eq p2
    end
  end

  describe '#attack' do
    it { is_expected.to respond_to(:attack) }

    it 'deals damage to opponent' do
      expect(p2).to receive(:receive_damage)
      game.attack(p2)
    end
  end
end
