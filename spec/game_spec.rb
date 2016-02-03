require 'game'

describe Game do
  let (:player_1) {double(:player)}
  let (:player_2) {double(:player)}
  subject (:game) {described_class.new(player_1,player_2)}


  describe '#attack' do
    it 'damages the player 1' do
      expect(player_1).to receive(:receive_damage)
      game.attack_player_1
    end

    it 'damages the player 2' do
      expect(player_2).to receive(:receive_damage)
      game.attack_player_2
    end
  end

  describe '#health' do
    it 'returns the health player 1' do
      expect(player_1).to receive(:health)
      game.health_player_1
    end
    it 'returns the health player 2' do
      expect(player_2).to receive(:health)
      game.health_player_2
    end
  end

  describe '#name' do
    it 'return the name of player 1' do
      expect(player_1).to receive(:name)
      game.name_player_1
    end

    it 'return the name of player 2' do
      expect(player_2).to receive(:name)
      game.name_player_2
    end
  end

end
