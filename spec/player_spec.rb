require 'player'

describe Player do
  let(:name) { 'Kenneth' }
  let(:player_1) {double(:player)}
  subject(:player) { described_class.new(name) }


  describe '#name' do
    it 'returns the player name' do
      expect(player.name).to eq name
    end
  end


  describe '#health' do
    it 'returns the players health' do
      expect(player.health).to eq Player::STARTING_HEALTH
    end
  end

  describe '#attack' do
    it 'damages the other player' do
      expect(player_1).to receive(:receive_damage)
      player.attack(player_1)
    end
  end

  describe '#receive_damage' do
    it 'reduce health by 10 HP' do
      expect{player.receive_damage}.to change{player.health}.by(-10)
    end
  end

end
