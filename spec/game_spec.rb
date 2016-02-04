require 'game'

describe Game do


  subject(:game) { described_class.new(player1, player2) }
  let(:player1) {double :player1}
  let(:player2) {double :player2}
describe 'player1' do
  it 'retrieves player 1' do
      p game
      expect(game.player1).to eq player1
  end

end


  describe 'attack' do
    it 'damages the player' do
      expect(player1).to receive(:receive_damage)
      game.attack(player1)
    end
  end

end
