require 'game'

describe Game do
subject (:game) {described_class.new}
let (:player1) {double(:player1)}
#let (:player2) {double(:player2)}

  describe '#attack' do
    it 'damages the other player' do
      expect(player1).to receive(:receive_damage)
      game.attack(player1)
    end
  end

end
