require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  # subject(:sarah) { Player.new("sarah") }
  # subject(:mic) { Player.new("mic") }
let(:player1) {double (:player)}
let(:player2) {double (:player)}

  it 'starts with player1' do
    expect(game.player1).to eq(player1)
  end

  it 'starts with player2' do
    expect(game.player2).to eq(player2)
  end

  describe 'attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player1)
    end
  end

end
