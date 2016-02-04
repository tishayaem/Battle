require 'game'

describe Game do
  subject(:game) { described_class.new(p1, p2) }
  player_1_name = 'Ash'
  player_2_name = 'Jessie'
  player_1_hp   = 100
  player_2_hp   = 100
  let(:p1) { double :player, name: player_1_name, hit_points: player_1_hp }
  let(:p2) { double :player, name: player_2_name, hit_points: player_2_hp }

  describe '#player_1' do
    it 'returns the first player' do
      expect(game.player_1).to eq p1
    end
  end

  describe '#player_2' do
    it 'returns the second player' do
      expect(game.player_2).to eq p2
    end
  end

  describe '#player_1_name' do
    it 'returns the first player\'s name' do
      expect(game.player_1_name).to eq player_1_name
    end
  end

  describe '#player_2_name' do
    it 'returns the second player\'s name' do
      expect(game.player_2_name).to eq player_2_name
    end
  end

  describe '#player_1_hp' do
    it 'returns the first player\'s hit points' do
      expect(game.player_1_hp).to eq player_1_hp
    end
  end

  describe '#player_2_hp' do
    it 'returns the second player\'s hit points' do
      expect(game.player_2_hp).to eq player_2_hp
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
