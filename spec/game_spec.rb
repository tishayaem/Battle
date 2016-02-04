require 'game'

describe Game do
  subject(:game) { described_class.new }
  subject(:sarah) { Player.new("sarah") }
  subject(:mic) { Player.new("mic") }


  describe 'attack' do
    it 'damages the player' do
      expect(mic).to receive(:receive_damage)
      game.attack(mic)
    end
  end

end
